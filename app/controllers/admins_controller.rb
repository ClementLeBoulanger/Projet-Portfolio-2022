class AdminsController < ApplicationController
  def admin
    @messages = Message.all
    @article_new = Article.new
    @articles = Article.all
    @projet_new = Projet.new
    @projets = Projet.all
  end
end
