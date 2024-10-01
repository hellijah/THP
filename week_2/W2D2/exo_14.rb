# exo_14.rb

50.times do |i|
    if (i + 1).even?
        if i < 9
            puts "jean.dupont.0#{i + 1}@email.fr"
        end

        if i >= 9
            puts "jean.dupont.#{i + 1}@email.fr"
        end
    end
end
