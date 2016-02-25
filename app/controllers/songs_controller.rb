  class SongsController < ApplicationController
	include SessionsHelper
	before_action :authenticate
	#validates_attachment_content_type :song, content_type => ["audio/mpeg"]

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
		file = song_params[:track]
		@user = User.find(params[:user_id])
		@song = @user.songs.new(song_params)
		@song.file = file.to_s
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
		params.require(:song).permit(:name, :writer, :genre, :track)
	end



end
