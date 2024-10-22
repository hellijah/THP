# THP Week 5 day 1

Initiation au framework Sinatra et à l'architecture MVC Model-View-Controller


### Arborescence du projet the_gossip_project_sinatra

the_gossip_project_sinatra/
├── Gemfile    
├── Gemfile.lock    
├── config.ru    
├── db/    
│   └── gossip.csv  — Fichier CSV où tous les potins sont stockés    
└── lib/
    ├── controller.rb  — Le contrôleur principal gérant les routes    
    ├── gossip.rb  — Le modèle Gossip pour gérer les données    
    └── views/    
        ├── index.erb  — Vue affichant tous les potins    
        ├── new_gossip.erb  — Formulaire pour créer un nouveau potin    
        └── show.erb  — Vue affichant les détails d'un potin spécifique    
