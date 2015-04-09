class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		@post= current_user.posts.build
  		@posts= current_user.posts
  		
  	else
  		@posts=Post.all
  	end
  end
end
