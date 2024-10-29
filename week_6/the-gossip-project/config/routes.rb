Rails.application.routes.draw do
  get "static_pages/home"
  get "static_pages/team"
  get "static_pages/contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get '/welcome', to: 'static#index' 

  root 'static_pages#home'         # page d'accueil


  # pour voir toutes les routes --> rails routes
  # Routes pour les potins
  resources :gossips

  
  get '/team', to: 'static_pages#team'  # Page "team"
  get '/contact', to: 'static_pages#contact'  # Page "contact"
  
  
  get 'welcome/:first_name', to: 'static_pages#welcome', as: 'welcome'





  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
