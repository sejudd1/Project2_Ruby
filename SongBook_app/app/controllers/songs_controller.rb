class SongsController < ApplicationController
	include SessionsHelper
	def index
		@songs = Song.all
	end

	def new
		@user = User.find(params[:user_id])
		@song = User.songs.new
	end

	def show
		
		if current_user	
			@song = Song.find(params[:id])
		else
			redirect_to login_path
		
		end
	end

	def create
		@user = User.find(params[:user_id])
		@song = @user.songs.new(params.require(:song).permit(:name, :writer, :genre, :file))
		if @song.save
    		redirect_to songs_path
  		else
    		render :new
  		end

	end

	def edit
		@song = Song.find(params[:id])
	end

	def update
		@song = Song.find(params[:id])
		if @song.update_attributes(song_params)
			redirect_to songs_path
		else
			render :edit
		end
	end

	def destroy
		@song = Song.find(params[:id])
		@song.destroy
		redirect_to songs_path
	end


	private

	def song_params
		params.require(:song).permit(:name, :writer, :genre, :file)
	end



end
