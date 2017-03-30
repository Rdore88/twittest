class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to tweets_path
    else
      render "new"
    end
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.password == params[:password]
      session[:current_user_id] = @user.id
      redirect_to user_tweets_path(@user)
    else
      render "new"
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to tweets_path
  end

end
