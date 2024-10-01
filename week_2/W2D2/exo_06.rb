# exo_06.rb
puts "écris un nombre"
print "> "
number = gets.chomp.to_i

(number - 1).times do
    puts "Bonjour toi!"
  end