# exo_09.rb

puts "Quel est ton année de naissance xxxx ?"
print "> "
user_birth_year = gets.chomp.to_i

numbers_loop = 2024 - user_birth_year

(numbers_loop + 1).times do |i|
    puts user_birth_year + i
end