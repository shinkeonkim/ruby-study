# 컨트롤러

## 컨트롤러 클래스 생성
```shell
> rails new generate controller 컨트롤러이름 [동작 옵션]
```

## 컨트롤러 클래스 삭제
```shell
> rails destroy 명령어
```

## 컨트롤러 클래스 기본
```ruby
class HelloController < ApplicationController
    def index
        render plain: 'Hello World!'
    end
end
```
책에서는 render text: 로 되어있는데, 왜인지 Template is missing 에러가 났고,
구글링을 해보니까 plain으로 수정하면 되는 듯 하다. 