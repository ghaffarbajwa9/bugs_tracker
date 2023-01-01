class SessionsController < ApplicationController
  def new
  end
  def create
    user=User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password]) 
      session[:user_id]=user.id
      redirect_to root_path
    else
      render :new, notice: "Invalid credentials"
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path
  end



  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :user_type)
  end
end
