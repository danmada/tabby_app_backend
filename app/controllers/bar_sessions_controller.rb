class BarSessionsController < ApplicationController
    def index
        cookies[:cookies_hi] ||= 'rose'
        session[:session_hi] ||= 'world'
        render json: {cookies:cookies.to_hash, session:session}
    end

    def create
        bar = Bar.find_by(adminUser: params[:adminUsername])
        if bar && bar.authenticate(params[:password])
            session[:bar_id] = bar.id
            render json: bar, status: :created
        else
            render json: { error: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    def destroy
        session.delete :bar_id
        head :no_content
    end

end
