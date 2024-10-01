# exo_16.rb

puts "Entrer un nombre?"
print "> "
number = gets.chomp.to_i

number.times do |i|
    (number - i).times do
        print " "
    end
    (2 * i + 1).times do
        print "#"
    end
    puts ""
end