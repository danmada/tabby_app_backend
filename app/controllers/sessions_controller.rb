class SessionsController < ApplicationController
 
      def index
        cookies[:cookies_hi] ||= 'rose'
        session[:session_hi] ||= 'world'
        render json: {cookies:cookies.to_hash, session:session}
      end

      def create
        cust = Customer.find_by(username: params[:username])
        session[:customer_id] = cust.id
        render json: cust
      end

      def destroy
        session.delete :customer_id
        head :no_content
      end

end
