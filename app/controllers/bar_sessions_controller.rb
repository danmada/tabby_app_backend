class BarSessionsController < ApplicationController

    def create
        bar = Bar.find_by(adminUser: params[:adminUser])
        session[:adminUser] = bar.id
        render json: bar, status: :created
      end

end
