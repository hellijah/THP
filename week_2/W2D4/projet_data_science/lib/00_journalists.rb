# 00_journalist.rb

liste_twitter = ["@jcunniet", "@PaulLampon", "@Aziliz31", "@ssoumier", "@marionsouzeau", "@gaellombart", "@bendarag", "@AurelieLebelle", "@julienduffe", "@thomaspoupeau", ...] # Ton array de handles complet ici

def nombre_de_handles(liste_twitter)
  puts "Il y a #{liste_twitter.size} handles dans cette liste."
end

def handle_le_plus_court(liste_twitter)
  plus_court = liste_twitter.min_by { |handle| handle.length }
  puts "Le handle le plus court est #{plus_court}."
end

def handles_avec_5_caracteres(liste_twitter)
  handles_5_char = liste_twitter.select { |handle| handle.length - 1 == 5 } 
  puts "Il y a #{handles_5_char.size} handles avec exactement 5 caractères."
end

def handles_majuscule(liste_twitter)
  majuscule_handles = liste_twitter.select { |handle| handle[1] =~ /[A-Z]/ } 
  puts "Il y a #{majuscule_handles.size} handles qui commencent par une majuscule."
end

def trier_par_ordre_alphabetique(liste_twitter)
  sorted_handles = liste_twitter.sort
  puts "Handles triés par ordre alphabétique : #{sorted_handles.join(', ')}"
end

def trier_par_taille(liste_twitter)
  sorted_by_size = liste_twitter.sort_by { |handle| handle.length }
  puts "Handles triés par taille : #{sorted_by_size.join(', ')}"
end

def position_de_handle(liste_twitter, target)
  position = liste_twitter.index(target)
  puts "La position de #{target} dans l'array est #{position}."
end

def repartition_par_taille(liste_twitter)
  tailles = liste_twitter.group_by { |handle| handle.length }
  tailles.each { |taille, liste| puts "#{liste.size} handles ont une taille de #{taille} caractères." }
end

def afficher_menu(liste_twitter)
  loop do
    puts "\n--- Menu de l'analyse des handles Twitter ---"
    puts "1. Nombre de handles"
    puts "2. Handle le plus court"
    puts "3. Nombre de handles avec 5 caractères"
    puts "4. Nombre de handles qui commencent par une majuscule"
    puts "5. Trier les handles par ordre alphabétique"
    puts "6. Trier les handles par taille"
    puts "7. Position du handle @epenser"
    puts "8. Répartition des handles par taille"
    puts "0. Quitter"
    print "Choisissez une option (0-8) : "
    
    choix = gets.chomp.to_i

    case choix
    when 1
      nombre_de_handles(liste_twitter)
    when 2
      handle_le_plus_court(liste_twitter)
    when 3
      handles_avec_5_caracteres(liste_twitter)
    when 4
      handles_majuscule(liste_twitter)
    when 5
      trier_par_ordre_alphabetique(liste_twitter)
    when 6
      trier_par_taille(liste_twitter)
    when 7
      position_de_handle(liste_twitter, "@epenser")
    when 8
      repartition_par_taille(liste_twitter)
    when 0
      puts "Merci d'avoir utilisé le programme. À bientôt !"
      break
    else
      puts "Choix invalide. Veuillez entrer un nombre entre 0 et 8."
    end
  end
end

afficher_menu(liste_twitter)