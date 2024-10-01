# exo_16.rb

puts "Entrer un nombre?"
print "> "
number = gets.chomp.to_i

number.times do |i|
    (number - i - 1).times do
        print " "
    end
    (i + 1).times do
        print "#"
    end
    puts ""
end