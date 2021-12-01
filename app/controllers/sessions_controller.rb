# Allows user to login and creates a session
# Logs user in if user id and session id is same
# After logging in opens form to Upload image
# Otherwise asks user to log in again
class SessionsController < ApplicationController
	def create
	  user = User.find_by(email: params[:session][:email].downcase)
	  if user && user.authenticate(params[:session][:password])
	    session[:user_id] = user.id
	    flash[:notice] = "Logged in successfully."
	    redirect_to new_upload_path
	  else
	    flash.now[:alert] = "There was something wrong with your login details."
	    render 'new'
	  end
	end
	 
	def destroy
	  session[:user_id] = nil
	  flash[:notice] = "You have been logged out."
	  redirect_to root_path
	end
end
