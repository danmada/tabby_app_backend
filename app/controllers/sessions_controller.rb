class SessionsController < ApplicationController
 
      def create
        cust = Customer.find_by(username: params[:username])
        session[:customer_id] = cust.id
        render json: cust, status: :created
      end

      # def create
      #   bar = Bar.find_by(adminUser: params[:adminUser])
      #   session[:adminUser] = bar.id
      #   render json: bar, status: :created
      # end
end
