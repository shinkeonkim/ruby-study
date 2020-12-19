class HelloController < ApplicationController
    def index
        render plain: 'Hello World!'
    end

    def list
        @books = Book.all
    end
end
