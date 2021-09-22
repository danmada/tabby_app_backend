class SessionsController < ApplicationController

  # skip_before_action :authorize, only: [:create, :index, :destroy]
 
      def index
        cookies[:cookies_hi] ||= 'rose'
        session[:session_hi] ||= 'world'
        render json: {cookies:cookies.to_hash, session:session}
      end

      def create
        cust = Customer.find_by(username: params[:username])
        if cust && cust.authenticate(params[:password])
            session[:customer_id] = cust.id
            render json: cust, status: :created
        else
            render json: { error: ["Invalid username or password"] }, status: :unauthorized
        end
      end

      def destroy
        session.delete :customer_id
        head :no_content
      end

end
