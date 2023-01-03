class UserupdatesController < ApplicationController
    before_action :require_user_logged_in!

    def edit
    end
    def update
        if Current.user.update(user_params)
            redirect_to root_path, notice: "Profile updated successfully!!!"
        else
            render :edit, status: :unprocessable_entity
        end 
    end
end

private
def user_params
    params.require(:user).permit(:name, :email, :password, :user_type)
end