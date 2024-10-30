class GossipsController < ApplicationController
  # attr_accessor :gossip

  # les 7 méthodes en REST 

  # CRUD READ
  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
    @gossips = Gossip.all
  end

  def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60

    Gossip.create(text: params[:gossip_text]) # Remplacez "text" par le nom réel de l'attribut de votre modèle
    
    redirect_to gossips_path # Redirigez l'utilisateur après la soumission du formulaire
  end

  # CRUD CREATE
  def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    @gossip = Gossip.new
  end

  def create
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
    @gossip = Gossip.new(title: params[:title], content: params[:content])
    if @gossip.save
      redirect_to gossips_path, notice: "Le potin a été créé avec succès !"
    else
      render :new
    end
  end
  
  # CRUD UPDATE
  def edit
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  # CRUD DESTROY
  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end
  
end
