class UsersController < ApplicationController
	#before_action :authenticate
	include SessionsHelper

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		if current_user	
			@user = User.find(params[:id])
		else
			redirect_to login_path
		
		end
		
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to users_path
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end



end


