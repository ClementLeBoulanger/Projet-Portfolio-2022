class AdminsController < ApplicationController
  def admin
    @messages = Message.all

    @articles = Article.all
    @article_new = Article.new
  end
end
