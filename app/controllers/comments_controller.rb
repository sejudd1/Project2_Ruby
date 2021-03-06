class CommentsController < ApplicationController

	def create
		@user = User.find( current_user.id )
		@song = Song.find(params[:song_id])
		@comment = @song.comments.create(comment_params)
		@comment.user_id = current_user.id
		if @comment.save
			redirect_to @song
		else
			render :new
		end
	end

	def count
		@song = Song.find(params[:song_id])
		@comment = @post.comments.count(params[:comment])
	end

	def destroy
		# @comment = Comment.find(params[:id])
		# @comment.destroy
		# redirect_to songs_path
		@comment = Comment.find(params[:id])
		@comment.comments.destroy_all
		@comment.destroy
		redirect_to songs_path
	end


	private

	def comment_params
		params.require(:comment).permit(:user_id, :body, :created_at)
	end


end
