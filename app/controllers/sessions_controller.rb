class SessionsController < ApplicationController

    def new
        if !logged_in?
            @user = User.new
            render 'new'
        end
    end

    def create
        @user = User.find_by(name: login_params[:name])
        if @user
            session[:user_id] = @user_id
            redirect_to root_path
        else
            @error = "Nome inválido"
            render 'new'
        end
    end


    def destroy
        session.destroy
        redirect_to root_path
    end

    private
        def login_params
            params.require(:user).permit(:name, :status)
        end
end
    