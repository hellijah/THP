class StaticPagesController < ApplicationController
  def home
  end

  def team
  end

  def contact
  end

  def welcome
    # Action pour afficher une page de bienvenue personnalisée
    @first_name = params[:first_name]
  end
end
