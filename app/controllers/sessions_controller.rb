class SessionsController < ApplicationController

  def new
  	@user = User.new
  end

  def create
    #Basic checking in Database, no authentication yet
    user = User.find_by(["email = ? and password = ?", 
      params[:session][:email].downcase, params[:session][:password]])
    if user
      #if User.first("conditions" => ["password = ?", ])
      # Log the user in and redirect to the user's show page.
        log_in user
        redirect_to "/posts"
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  	log_out
    redirect_to root_url
  end
end
