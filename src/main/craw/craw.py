from selenium import webdriver
import time
import pandas as pd
import datetime
# from pymysql import connect, cursors

def scraping(engine, browser, url, brand_list, id, categoryId):
    # 현재날짜 가져오기
    dt_now = datetime.datetime.now()

    # 페이지 이동
    browser.get(url)
    time.sleep(2) # 페이지 여는 시간 기다리기

    # 제품 테이블
    # id   제품   가격  사진  등록일(어케?)  리뷰수  위시리스트등록수  만족도  서브카테고리명  브랜드명
    # ㅇ      ㅇ     ㅇ    ㅇ      ㅇ                                                                     o               o  

    # 데이터 담을 곳 
    item_list = []

    ### 광고뜨면 클릭해주기!(팝업창을 삭제하는 개념으로 handles로 제어해봤지만 해결이 안됬음...)
    # 페이지 개수 가져오기
    count = browser.find_elements_by_css_selector(".pagination > a")
    count_set = len(count)
    input = 1
    # 페이지 개수 만큼 반복문 돌리기
    try:
        for i in range(0, count_set + 1):
            # 한 페이지당 아이템 개수 가져오기
            l_count = browser.find_elements_by_css_selector(".list_product > ul > li")
            l_input = 0
            l_image_input = 0
            # 한 페이지당 아이템 개수 만큼 반복문 돌리기
            for i in l_count:
                item_storage = []
                image = browser.find_elements_by_css_selector(".list_product .visual_section img")[l_image_input].get_attribute("src")
                item_storage.append(image)

                item = browser.find_elements_by_css_selector(".list_product .info_section .txt_summary")[l_input]
                item_storage.append(item.text)

                price = browser.find_elements_by_css_selector(".list_product .info_section .txt_price em")[l_input]
                p = price.text.replace(",", "")
                item_storage.append(int(p))

                brand = browser.find_elements_by_css_selector(".list_product .info_section .txt_name")[l_input]
                item_storage.append(brand.text)
                brand_list.append(brand.text)

                item_storage.append(dt_now.date()) # 현재 날짜만 가져와서 넣기

                item_storage.append(categoryId) # 해당 서브카테고리 넣기

                item_list.append(item_storage)
                l_image_input = l_image_input + 2
                l_input = l_input + 1
            print("한 페이지당 가져온 아이템 개수: ", l_input)

            browser.find_element_by_xpath(f"//*[@id='ap_container']/div/div[2]/div[2]/div[2]/div[5]/a[{input}]").click()
            time.sleep(2) # 페이지 여는 시간 기다리기
            input = input + 1
    except Exception: # 다음 페이지로 클릭 시, 클릭 할 element가 없다면 예외처리
        print("더이상 페이지가 없음")

    # print(item_list)
    print(len(item_list))
    print("한 카테고리 데이터 파싱완료")

    # 브랜드 중복 제거
    brand_set = set(brand_list)
    brand_list = list(brand_set)

    # 데이터프레임으로 변환해서 db에 저장(!!!db에 넣을 때 비슷한 것끼리는 기존 테이블에 맞춰서 들어가지지만, 문자형태가 숫자형태로 들어가게 되는거는 무조건 형변환 해줘야함!)

    # 브랜드 테이블에 데이터 넣기 
    # 브랜드 테이블에 없는 브랜드만 추가
    brand_append_list = []
    for i in range(len(brand_list)):
        if(pd.read_sql(con=engine, sql=f"select id from brand where bname = '{brand_list[i]}'").empty):
            brand_append_list.append(brand_list[i])

    with engine.begin() as conn: # rollback으로 인한 id증가 문제 해결을 위해 id 시작 범위를 지정
      conn.execute(f"alter table brand AUTO_INCREMENT = {id[1]}")

    dataFrame = pd.DataFrame(brand_append_list, columns=["bname"] )
    dataFrame.to_sql("brand", engine, index=False, if_exists="append")

    id[1] = id[1] + len(brand_append_list)

    # 브랜드 id랑 item리스트 브랜드명 매칭하기
    def select(brand_name):
        brand_id = pd.read_sql(con=engine, sql=f"select id from brand where bname = '{brand_name}'")
        return brand_id

    for i in range(len(item_list)):
        item_list[i][3] = select(item_list[i][3]).iloc[0][0]

    # 아이템 테이블에 데이터 넣기
    with engine.begin() as conn: # rollback으로 인한 id증가 문제 해결을 위해 id 시작 범위를 지정
      conn.execute(f"alter table item AUTO_INCREMENT = {id[0]}")
   
    dataFrame = pd.DataFrame(item_list, columns=["image", "iname", "price", "brandId", "regiDate", "categoryId"] )
    # print(dataFrame)
    dataFrame.to_sql("item", engine, index=False, if_exists="append")

    id[0] = id[0] + len(item_list)
    ################## pymysql방법
    # item_dict = dataFrame.to_dict('records')
    # print(item_dict)

    # conn = connect(host="localhost", user="green",
    #                password="green1234", db="greendb", charset="utf8")

    # cursor = conn.cursor(cursors.DictCursor)

    # def insert_many():
    #     insert_sql = "INSERT INTO item(image, iname, price, regiDate) VALUES(%(image)s, %(iname)s,  %(price)s,  %(regiDate)s)"
    #     cursor.executemany(insert_sql, item_dict)
    #     conn.commit()
    #     conn.close()

    # insert_many()
    ###################

