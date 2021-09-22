class CustomersController < ApplicationController
    wrap_parameters format: []
    # skip_before_action :authorize, only: [:create, :show]

    def show
        cust = Customer.find_by(id: session[:customer_id])
        render json: cust
    end

    def create
        byebug
        cust = Customer.create(cust_params)
        render json: cust, status: :created
    end


    private

    def cust_params
        params.permit(:username, :name, :age, :email, :credit_card, :password, :password_confirmation)
    end
end
