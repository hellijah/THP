# def ask_floor()
#   puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
#   print "> "
#   return gets.chomp.to_i
# end

# def build_floor(total_floor, current_floor)
#   print " "*(current_floor-total_floor)
#   print "#"*(2*total_floor-1)
#   puts
# end

# def build_pyramid(total_floor)
#   puts "Voici la pyramide :"
#   total_floor.times do |current_floor|
#     build_floor(current_floor+1, total_floor)
#   end
# end

# def full_pyramid
#   build_pyramid(ask_floor)
# end
# full_pyramid

# def half_pyramid (etage)
#     etage.times do |i|
#         puts " " *(etage-i-1) + "#"*(i*2+1)
#     end
# end

# def choisir
#     puts "choisi un nombre entier entre 1 et 25"
#     nombre=gets.chomp.to_i
#     if 0<=nombre && nombre<=25
#         return nombre
#     else choisir    
#     end
# end

# def perform
#     etage=choisir
#     half_pyramid(etage)
# end

# perform


def wtf_pyramid (etage)
  etage.times do |i|
    puts " " *(etage-i-1) + "#"*(i*2+1)
  end
  (etage-1).times do |i|
    puts " "*(i+1) +"#"*((etage-1-i)*2-1)
  end
end

def choisir
  puts "choisi un nombre entier impaire entre 1 et 10"
  nombre=gets.chomp.to_i
  if 0<=nombre && nombre<=10 && nombre % 2 ==1
      return ((nombre+1)/2)
  else choisir    
  end
end

def perform
  etage=choisir
  wtf_pyramid(etage)
end

perform