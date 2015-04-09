class LikingsController < ApplicationController
	before_action :authenticate_user!

	def update
		@post = Post.find(params[:id])
		current_user.liked_posts << @post
		redirect_to @post, notice: "Post liked!"
	end
end
