class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
        Current.user=User.find_by(id: session[:user_id])
    end
    def new
        @user = User.new
    end
    def create
        @user=User.new(user_params)

        if @user.save
            session[:user_id]=@user.id
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end 
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to root_path, status: :see_other
    end




    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :user_type)
    end
end
