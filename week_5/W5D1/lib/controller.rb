require 'bundler'
Bundler.require

require 'gossip'

class ApplicationController < Sinatra::Base
  # get '/' do
  #   erb :index
  # end

  get '/' do
    erb :index, locals: { gossips: Gossip.all }
  end

  # get '/hello/:name' do
  #   # matches "GET /hello/foo" and "GET /hello/bar"
  #   # params['name'] is 'foo' or 'bar'
  #   "Hello #{params['name']}!"
  # end

  # get '/gossips/:id' do
  #   # Récupérer l'ID à partir des paramètres
  #   gossip_id = params[:id]
    
  #   # Afficher l'ID dans le navigateur ou dans le terminal
  #   "Voici le numéro du potin que tu veux : #{gossip_id} !"
  # end

  get '/gossips/:id' do
  gossip = Gossip.find(params[:id])
    if gossip
      # "Voici le potin de #{gossip.author} : #{gossip.content}"
      erb :show, locals: { gossip: gossip, id: params[:id] }
    else
      "Potin non trouvé"
    end
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  # post '/gossips/new/' do
  #   puts "Salut, je suis dans le serveur"
  #   puts "Ceci est le contenu du hash params : #{params}"
  #   puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
  #   puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
  #   puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"

  #   redirect '/'
  # end

  post '/gossips/new/' do
    # Enregistrer des données statiques
    Gossip.new(params["gossip_author"], params["gossip_content"]).save

    # Rediriger vers la page d'accueil après l'enregistrement
    redirect '/'
  end

  
  # run! if app_file == $0
end

#  rerun "rackup --port 4567"