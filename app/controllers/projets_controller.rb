class ProjetsController < ApplicationController
  def create
    @projet = Projet.new(projet_params)
    @projet.save!
    redirect_to admin_path
  end

  def destroy
    @projet = Projet.find(params[:id])
    @projet.destroy
    redirect_to admin_path
  end

  private

  def projet_params
    params.require(:projet).permit(:title, :description, :photo, :github, :rails, :php, :react, :html, :sass, :css, :javascript, :postgresql, :mysql)
  end
end
