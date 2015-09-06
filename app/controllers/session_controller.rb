class SessionController < ApplicationController
  
  def create
    user = User.find_by(username: params[:session][:username].downcase)
 
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to(:address)
    else
      # Create an error message.
      flash[:notice] = 'Invalid username/password combination' # Not quite right!
      redirect_to(:back)
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
