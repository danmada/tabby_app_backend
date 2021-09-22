class BarsController < ApplicationController
    wrap_parameters format: []
    def index
        bars = Bar.all
        render json: bars
    end

    def show
        bar = Bar.find_by(id: session[:bar_id])
        if bar
        render json: bar
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    def create
        bar = Bar.create(bar_params)
        render json: bar, status: :created
    end

    private

    def bar_params
        params.permit(:name, :latitude, :longitude, :password, :password_confirmation)
    end
end
