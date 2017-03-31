class NewUserMailer < ApplicationMailer

  def sign_up(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Twitter #{@user.username}")
  end

end
