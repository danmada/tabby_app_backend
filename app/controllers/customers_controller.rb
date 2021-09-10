class CustomersController < ApplicationController

    def show
        cust = Customer.find_by(id: session[:customer_id])
        render json: cust
    end

    def create
        cust = Customer.create(cust_params)
        render json: cust, status: :created
    end


    private

    def cust_params
        params.permit(:username, :name, :age, :email, :credit_card)
    end
end
