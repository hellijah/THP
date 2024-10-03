def say_hello
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp
  puts "bonjour , #{first_name}"
  return first_name
end

say_hello