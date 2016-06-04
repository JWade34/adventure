class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to root_path, alert: "Your message was sent successfully."
    else
        redirect_to root_path, alert: "There was an error sending your message. Please try again or email us directly."
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :company, :message)
  end

end
