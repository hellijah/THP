Rails.application.routes.draw do
  get "static_pages/home"
  get "static_pages/team"
  get "static_pages/contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get '/welcome', to: 'static#index' 


  root 'static_pages#home'         # page d'accueil
  get '/team', to: 'static_pages#team'  # Page "team"
  get '/contact', to: 'static_pages#contact'  # Page "contact"
  
  
  # get '/welcome/:first_name', to: 'static#welcome'  # Page de bienvenue
  # resources :gossips, only: [:show, :index]  # Routes pour les potins
  # resources :users, only: [:show]  # Route pour afficher un utilisateur



  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
