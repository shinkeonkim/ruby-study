# code: utf-8

class HelloController < ApplicationController
    def index
        render plain: 'Hello World!'
    end
end
