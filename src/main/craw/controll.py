import time
import craw as c
import sqlalchemy as db
from selenium import webdriver
## 총 7분 소요
# DB연결
engine = db.create_engine("mariadb+mariadbconnector://green:green1234@127.0.0.1:3306/greendb")

# 브라우저 열기
browser = webdriver.Chrome() # 같은 경로에 있어서 경로 정보 안적어도 됨

id = [1,1] # 아이템 id, 브랜드 id
url = ""
brand_list = []
categoryId = 1

# 스킨케어 > 스킨/토너 1
url = "https://www.amoremall.com/kr/ko/display/category/CTG001002001?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 스킨케어 > 로션/에멀젼 2
url = "https://www.amoremall.com/kr/ko/display/category/CTG001002002?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 스킨케어 > 에센스/세럼 3
url = "https://www.amoremall.com/kr/ko/display/category/CTG001002003?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 스킨케어 > 크림 4
url = "https://www.amoremall.com/kr/ko/display/category/CTG001002004?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 스킨케어 > 미스트 5
url = "https://www.amoremall.com/kr/ko/display/category/CTG001002006?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 스킨케어 > 마스크/팩 6
url = "https://www.amoremall.com/kr/ko/display/category/CTG001003001?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 스킨케어 > 페이스오일 7
url = "https://www.amoremall.com/kr/ko/display/category/CTG001003002?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 클렌징 > 클렌징폼 8
url = "https://www.amoremall.com/kr/ko/display/category/CTG001001002?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 클렌징 > 클렌징워터 9
url = "https://www.amoremall.com/kr/ko/display/category/CTG001001006?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 클렌징 > 클렌징오일 10
url = "https://www.amoremall.com/kr/ko/display/category/CTG001001004?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 클렌징 > 클렌징티슈 11
url = "https://www.amoremall.com/kr/ko/display/category/CTG001001005?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 클렌징 > 클렌징리무버 12
url = "https://www.amoremall.com/kr/ko/display/category/CTG001001001?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 선케어 > 선블럭 13
url = "https://www.amoremall.com/kr/ko/display/category/CTG001004001?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 선케어 > 선스프레이 14 삭제

# 선케어 > 선스틱 15
url = "https://www.amoremall.com/kr/ko/display/category/CTG001004003?upperMenuId=CTG001"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 메이크업 > 페이스 16
url = "https://www.amoremall.com/kr/ko/display/category/CTG002001001?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002001002?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002001003?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002001004?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002001005?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002001006?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 메이크업 > 립 17
url = "https://www.amoremall.com/kr/ko/display/category/CTG002002001?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002002002?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002002003?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002002004?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 메이크업 > 아이 18
url = "https://www.amoremall.com/kr/ko/display/category/CTG002003001?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002003002?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002003003?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002003005?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002003006?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 메이크업 > 치크 19
url = "https://www.amoremall.com/kr/ko/display/category/CTG002004001?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002004002?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002004003?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

# 메이크업 > 네일 20
url = "https://www.amoremall.com/kr/ko/display/category/CTG002006001?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002006002?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002006003?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
url = "https://www.amoremall.com/kr/ko/display/category/CTG002006004?upperMenuId=CTG002"
c.scraping(engine, browser, url, brand_list, id, categoryId)
categoryId = categoryId + 1

