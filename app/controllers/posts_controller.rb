class PostsController < ApplicationController
  def index
    @posts= Post.all
  end
  def new
  	@post = current_user.posts.build(post_params)
  end
  def create
  	@post = current_user.posts.build(post_params)
  	if @post.save
  		redirect_to root_path, notice: "your post has been saved"
  	else
  		redirect_to root_path, notice: "error"
  	end
  end
  protected
  def post_params
  	params.require(:post).permit(:title, :text, :image)
  end
end
