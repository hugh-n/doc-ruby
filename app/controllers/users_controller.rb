class UsersController < ApplicationController 

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #if user's credentials are saved to database -> index
      redirect_to "/posts"
    else
      flash[:notice] = "Form is invalid"
      render "new"
    end
  end

  def user_params
   params.require(:user).permit(:email, :password, :salt)
 end


 def show
 	@user = User.find(user_params)
    	debugger
  end

end