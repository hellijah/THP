# exo_12.rb

puts "Quel est ton année de naissance xxxx ?"
print "> "
user_birth_year = gets.chomp.to_i

numbers_loop = 2024 - user_birth_year

(numbers_loop + 1).times do |i|
    if (2024 - user_birth_year - i) != i
        puts "il y a #{2024 - user_birth_year - i} ans, tu avais #{i} ans"
    end

    if (2024 - user_birth_year - i) == i
        puts "Il y a #{i} ans, tu avais la moitié de l'âge que tu as aujourd'hui"
    end
end