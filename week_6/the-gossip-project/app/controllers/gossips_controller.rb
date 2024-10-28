class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to gossips_path, notice: 'Le potin a été créé avec succès.'
    else
      render :new
    end
  end

  private

  # chatGPT
  # def gossip_params
    # params.require(:gossip).permit(:title, :content)  # Remplacez par les attributs réels de votre modèle
  # end
end
