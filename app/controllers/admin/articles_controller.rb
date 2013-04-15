class Admin::ArticlesController < AdminController

  def new
    @article = Article.new
  end

  def index
    @article = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @post.update_attributes params[:article]
    redirect_to admin_articles_path(@article)
  end

  def create
    Article.create params[:article]
    redirect_to admin_articles_path
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to admin_articles_path
  end

end
