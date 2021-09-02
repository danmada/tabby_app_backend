class TabsController < ApplicationController
    wrap_parameters format: []
    def index
        tabs = Tab.all
        render json: tabs
    end

    def show
        tab = Tab.find_by(id: params[:id])
        render json: tab
    end

    def create
        tab = Tab.create(tabs_params)
        render json: tab, status: :created
    end

    def update
        tab = Tab.find_by(id: params[:id])
        if tab
            tab.update(tabs_params)
            render json: tab
        else
            render json: {error: "Order Not Found"}, status: :not_found
        end
    end


    private

    def tabs_params
        params.permit(:customer_id, :bar_id, :is_open)
    end
end
