# 모델
## 데이터베이스 연결 설정
액티브 레코더를 사용해 데이터베이스에 연결하려면, config/database.yml에서 관련 설정들을 하면 된다.

예시)
```yml
development:
  adapter: sqlite3
  database: db/development.sqlite3
  pool: 5,
  timeout: 5000

test:
  adapter: sqlite3
  database: db/test.sqlite3
  pool: 5,
  timeout: 5000

production:
  adapter: sqlite3
  database: db/production.sqlite3
  pool: 5,
  timeout: 5000
```

## 모델 클래스 생성

```shell
> rails generate model name field:type [...] [options]
```

예시)
```shell
> rails generate model book isbn:string title:string price:integer publish:string published:date cd:boolean
```

## 마이그레이션 파일 실행하기
```shell
> rake db:migrate
```

## 픽스처 파일 > 데이터베이스
픽스처: Rails에서 테스트 데이터를 데이터베이스로 넣기위해 지원하는 기능이다.

`test/fixtures 안에 있는 YAML 형식의 파일의 데이터를 데이터베이스로 넣어준다.`
```
> rake db:fixtures:load FIXTURES=books
```

## 데이터베이스 클라이언트 실행
```shell
> rails dbconsole
sqlite> .tables
sqlite> .schema books
sqlite> SELECT * FROM books;
sqlite> .quit
```

## 데이터베이스 재설정 하기
(데이터베이스 다 날리는 거임. 조심하기)

```shell
> rake db:reset
> rake db:fixtures:load
```