class DrinksController < ApplicationController
    wrap_parameters format: []
    def index
        drinks = Drink.all
        render json: drinks
    end
end
