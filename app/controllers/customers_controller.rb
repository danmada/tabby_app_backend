class CustomersController < ApplicationController
    wrap_parameters format: []
    def show
        cust = Customer.find_by(id: params[:id])
        render json: cust
    end

    def create
        cust = Customer.create(cust_params)
        render json: cust, status: :created
    end


    private

    def cust_params
        params.permit(:name, :age, :email, :credit_card)
    end
end
