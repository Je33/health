class Admin::PostsController < AdminController

  def new
    @post = Post.new
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes params[:post]
    redirect_to admin_post_path(@post)
  end

  def create
    @post = Post.create params[:post]
    if params[:save]
      redirect_to admin_posts_path
    else
      redirect_to admin_post_path
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to admin_posts_path
  end

end
