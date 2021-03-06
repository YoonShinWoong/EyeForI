# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Naver.configure do |config|
  config.client_id     = "3br6Cy8iz8_KWo5SnkQ1"
  config.client_secret = "nCauY9hxXz"
  config.redirect_uri  = "https://eyefori-woongsin94.c9users.io/oauth/callback"
  config.timeout = 10
  config.debug = false
end
#김민석
User.create(usertype: "parent", username: "kms", email: "dheldh66@icloud.com", gender: "남", age: 24, telephone: "	01040197555", password: "121212", password_confirmation: "121212")
User.create(usertype: "teacher", username: "t_kms", email: "dheldh77@icloud.com", gender: "남", age: 24, telephone: "	01040197555", password: "121212", password_confirmation: "121212", kindergarden_id: "9")
#윤신웅
User.create(usertype: "parent", username: "woong", email: "woongsin94@naver.com", gender: "남", age: 24, telephone: "	01012341234", password: "123123", password_confirmation: "123123")
User.create(usertype: "teacher", username: "t_woong", email: "woongsin942@naver.com", gender: "남", age: 24, telephone: "	01041234235", password: "123123", password_confirmation: "123123", kindergarden_id: "9")
#이산하
User.create(usertype: "parent", username: "lsh", email: "bluegisa@likelion.org", gender: "남", age: 6, telephone: "	01011112222", password: "123456", password_confirmation: "123456")
User.create(usertype: "teacher", username: "t_lsh", email: "bluegisa12@gmail.com", gender: "남", age: 6, telephone: "	01011112222", password: "123456", password_confirmation: "123456", kindergarden_id: "9")
#홍연주
User.create(usertype: "parent", username: "yeonju", email: "hyj9785@likelion.org", gender: "여", age: 22, telephone: "	01095903206", password: "123456", password_confirmation: "123456")
User.create(usertype: "teacher", username: "t_yeonju", email: "hyj9785@naver.com", gender: "여", age: 22, telephone: "	01095903206", password: "123456", password_confirmation: "123456", kindergarden_id: "9")
#유재인
User.create(usertype: "parent", username: "jaein", email: "y_jaein@naver.com", gender: "여", age: 22, telephone: "	01089725447", password: "123456", password_confirmation: "123456")
User.create(usertype: "teacher", username: "t_jaein", email: "y_jaein@likelion.org", gender: "여", age: 22, telephone: "	01089725447", password: "123456", password_confirmation: "123456", kindergarden_id: "9")
#김지연
User.create(usertype: "parent", username: "kjy", email: "mineo3o@naver.com", gender: "여", age: 24, telephone: "	01040197555", password: "123456", password_confirmation: "123456")
User.create(usertype: "teacher", username: "t_kjy", email: "mineo3o@likelion.org", gender: "여", age: 24, telephone: "	01040197555", password: "123456", password_confirmation: "123456", kindergarden_id: "9")

#김민석 아이
Child.create(name: "김수한무", age: 5, gender: "남", teacher_id: 2, parent_id: 1, kindergarden_id: 9, className: "병아리반", classNumber: 1 )
#윤신웅 아이
Child.create(name: "윤이클로", age: 5, gender: "남", teacher_id: 4, parent_id: 3, kindergarden_id: 9, className: "병아리반", classNumber: 1 )
#이산하 아이
Child.create(name: "이마트", age: 5, gender: "남", teacher_id: 6, parent_id: 5, kindergarden_id: 9, className: "병아리반", classNumber: 1 )
#홍연주 아이
Child.create(name: "홍익대", age: 5, gender: "남", teacher_id: 8, parent_id: 7, kindergarden_id: 9, className: "병아리반", classNumber: 1  )
#유재인 아이
Child.create(name: "유튜브", age: 5, gender: "여", teacher_id: 10, parent_id: 9, kindergarden_id: 9, className: "병아리반", classNumber: 1  )
#김지연 아이
Child.create(name: "김헤일리", age: 5, gender: "여", teacher_id: 12, parent_id: 11, kindergarden_id: 9, className: "병아리반", classNumber: 1  )

require 'nokogiri'
require 'open-uri'

# 서울특별시 종로구(1) ~ 서울특별시 강동구(25)
(1...25).each do |number|
    arcode = Region.find(number).arcode.to_s
    
    doc = Nokogiri::XML(open("http://api.childcare.go.kr/mediate/rest/cpmsapi030/cpmsapi030/request?key=08b5b6f754264e40bd3018ca28921360&arcode=" + arcode + "&stcode="))
    
    # item 파싱
    item = doc.xpath("//item")
    
    counter = 0
    # item 내부 정보 하나씩 꺼내기
    item.each do |i|
        Kindergarden.create(sidoname: i.xpath("//sidoname")[counter].inner_text,
                            sigunguname: i.xpath("//sigunname")[counter].inner_text,
                            stcode: i.xpath("//stcode")[counter].inner_text,
                            crname: i.xpath("//crname")[counter].inner_text,
                            crtypename: i.xpath("//crtypename")[counter].inner_text,
                            crstatusname: i.xpath("//crstatusname")[counter].inner_text,
                            zipcode: i.xpath("//zipcode")[counter].inner_text,
                            craddr: i.xpath("//craddr")[counter].inner_text,
                            crtelno: i.xpath("//crtelno")[counter].inner_text,
                            crfaxno: i.xpath("//crfaxno")[counter].inner_text,
                            crhome: i.xpath("//crhome")[counter].inner_text,
                            nrtrroomcnt: i.xpath("//nrtrroomcnt")[counter].inner_text,
                            nrtrroomsize: i.xpath("//nrtrroomsize")[counter].inner_text,
                            plgrdco: i.xpath("//plgrdco")[counter].inner_text,
                            chcrtescnt: i.xpath("//chcrtescnt")[counter].inner_text,
                            crcapat: i.xpath("//crcapat")[counter].inner_text,
                            crchcnt: i.xpath("//crchcnt")[counter].inner_text,
                            la: i.xpath("//la")[counter].inner_text,
                            lo: i.xpath("//lo")[counter].inner_text,
                            crcargbname: i.xpath("//crcargbname")[counter].inner_text,
                            crcnfmdt: i.xpath("//crcnfmdt")[counter].inner_text,
                            crpausebegindt: i.xpath("//crpausebegindt")[counter].inner_text,
                            crpauseenddt: i.xpath("//crpauseenddt")[counter].inner_text,
                            crabldt: i.xpath("//crabldt")[counter].inner_text,
                            crspec: i.xpath("//crspec")[counter].inner_text
                            )
                            
        counter += 1
    end
end

require 'roo'

# 서울광역시 엑셀 데이터
xlsx = Roo::Excelx.new("./seoul_test.xlsx")
# 전체 데이터 2 ~ 2083 중 일부만 시드생성
(2..150).each do |i|
    @danger = Danger.new
    
    
    @danger.controlnumber = xlsx.cell(i, 'A')
    @danger.phone = xlsx.cell(i, 'B')
    address = xlsx.cell(i, 'C')
    @danger.zipcode = xlsx.cell(i, 'D')
    @danger.name = xlsx.cell(i, 'E')
    @danger.category = xlsx.cell(i, 'F')
    
    # () 버리기
    strStart = address.index('(')
    @danger.address = address[0..(strStart-1)]
    
    res = Naver::Map.geocode(query: @danger.address)
    # 좌표정보 X와 Y는 위도와 경도가 아니라
    # 중부원점TM(EPSG:2097) 좌표계에 따른 해당위치의 좌표정보이다.
    @danger.x = res.x
    @danger.y = res.y
    @danger.save
end