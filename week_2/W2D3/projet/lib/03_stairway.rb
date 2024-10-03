# def lancerDe
#     de=rand(1..6)
#     if de==5 || de==6
#         return (1)
#     elsif de==1
#         return(-1)
#     else
#         return (0)
#     end
# end

# def avance(marche,resultat)
#     marche+=resultat
#     puts "tu te deplace de #{resultat} marche. Tu es a la #{marche} ième marche"
#     test(marche)
# end

# def test(marche)
#     if marche==10
#         puts "tu est arrivé a la fin"
#     else
#         resultat=lancerDe
#         avance(marche,resultat)
#     end
# end

# def perform
#     marche=0
#     test(marche)
# end

# perform


def lancerDe
    de=rand(1..6)
    if de==5 || de==6
        return (1)
    elsif de==1
        return(-1)
    else
        return (0)
    end
end

def avance(marche,resultat,tour)
    marche+=resultat
    test(marche,tour)
end

def test(marche,tour)
    if marche==10
        return tour
    else
        tour+=1
        resultat=lancerDe
        avance(marche,resultat,tour)
    end
end

def perform
    tour=0
    marche=0
    test(marche,tour)
end

def average_finish_time
    summe=0
    100.times do
        summe+=perform
    end
    puts "#{summe / 100}"
end

average_finish_time