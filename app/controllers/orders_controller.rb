class OrdersController < ApplicationController
    wrap_parameters format: []
    def index
        orders = Order.all
        render json: orders
    end

    def show
        order = Order.find_by(id: params[:id])
        render json: order
    end

    def create
        order = Order.create(orders_params)
        render json: order, status: :created
    end

    def destroy
        order = Order.destroy(params[:id])
        if order
            order.destroy
            head :no_content
        else
        render json: {error: "Order Not Found"}, status: :not_found
        end
    end


    private

    def orders_params
        params.permit(:tab_id, :drink_id)
    end
end
