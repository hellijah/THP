# def say_hello
#   puts "Quel est ton prénom ?"
#   print "> "
#   first_name = gets.chomp
#   puts "bonjour , #{first_name}"
#   return first_name
# end

# say_hello

def say_hello (first_name)
  puts "hello #{first_name}"
end

# say_hello("charlie")

def ask_first_name
  puts"quel est ton prenom?"
  first_name=gets.chomp
  return first_name
end

first_name=ask_first_name
say_hello(first_name)