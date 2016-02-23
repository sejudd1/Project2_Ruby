class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:login][:email])
		if user && user.authenticate(params[:login][:password])
			#setting a cookie to verify user is the user signing in
			#make a new key in the session object 
			#which gets stored in a cookie
			session[:user_id] = user.id.to_s
			redirect_to user_path(user)
			#turning user_id into a string because cookies can only store strings
		else
			#something's wrong please try again?
			flash[:danger] = "Invalid email/password, please try again."
			render :new

		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end

	# private

 #    def session_params
 #        params.require(:user).permit(:email, :password)
 #    end


end
