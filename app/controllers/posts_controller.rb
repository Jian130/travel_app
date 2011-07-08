class PostsController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @post = Post.new
    3.times { @post.photos.build }
  end
  
  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end
  
end
