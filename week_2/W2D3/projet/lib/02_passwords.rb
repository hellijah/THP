def signup
    puts "definissez votre nouveau mot de passe"
    password=gets.chomp
    return password
end

def login (password)
    puts "re donner votre mot de passe"
    if gets.chomp == password
        welcome_screen
    else
        login(password)
    end
end

def welcome_screen
    puts "bien joué"
end

def perform
    password=signup
    login(password)
end

perform