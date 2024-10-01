# exo_15.rb

puts "Entrer un nombre?"
print "> "
number = gets.chomp.to_i

number.times do |i|
    (i + 1).times do
        print "#"
    end
    puts ""
end