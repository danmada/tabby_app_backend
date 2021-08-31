class TestsController < ApplicationController

    def index
        test = Test.all
        render json: test
    end
end
