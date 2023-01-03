  class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to root_path
  end

  def destroy
    @article = Article.find(params[:id])
    @comment = @article.comments.find(params[:article_id])
    @comment.destroy
    #redirect_to root_path
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
