class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      NewUserMailer.sign_up(@user).deliver_now
      redirect_to tweets_path, notice: "User created"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  private def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
