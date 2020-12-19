# 스캐폴딩 기능

## 기존의 모델 클래스 + 마이그레이션 파일 등 제거
```shell
> rails destroy model book
> rake db:drop #그냥 rails dbconsole로 sqlite3 콘솔에서 드랍하는게 더 편하고 좋은 듯함.
```

## 스캐폴딩 기능을 이용해 books 테이블과 관련된 기능 한꺼번에 생성
```shell
> rails generate scaffold book isbn:string title:string price:integer publish:string published:date cd:boolean
> rake db:migrate
```