  class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      #redirect_to action: "index"
    else
      
    end
  end

  def destroy
  
    @article = Article.find(params[:id])
    @article.destroy
    # respond_to do |format|
    #   format.html  { redirect_to articles_url }
    #   format.js 
    # end
  end
  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end

end