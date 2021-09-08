class CustomersController < ApplicationController
    wrap_parameters format: []
    def show
        cust = Customer.find_by(id: session[:customer_id])
        if cust
            render json: cust
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
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
