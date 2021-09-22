class ApplicationController < ActionController::API
    include ActionController::Cookies

    # before_action :authorize


    # def authorize
    #     @current_cust = Customer.find_by(id:session[:customer_id])
    #     render json: {error:["Not authorized"]}, status: :unauthorized unless @current_cust
    # end
end
