class BarsController < ApplicationController
    wrap_parameters format: []
    def index
        bars = Bar.all
        render json: bars
    end

    def show
        bar = Bar.find_by(id: params[:id])
        render json: bar
    end

    def create
        bar = Bar.create(bar_params)
        render json: bar, status: :created
    end

    private

    def bar_params
        params.permit(:name, :latitude, :longitude)
    end
end
