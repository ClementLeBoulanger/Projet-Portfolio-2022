class ArticleController < ApplicationController
  def create
    @article = Article.new(article_params)
    @article.save!
    redirect_to admin_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admin_path
  end

  private

  def article_params
    params.require(:article).permit(:text)
  end
end
