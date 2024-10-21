require 'pry'
require 'csv'

class Gossip
  attr_accessor :author, :content

  # @@all_gossips = []

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [author, content]
    end
  end


  def self.all
    all_gossips = []
    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    puts all_gossips.inspect  # Pour afficher le contenu dans le terminal
    return all_gossips
  end

  def self.find(id)
    # Ici, id est l'index que tu veux récupérer (ajuste si nécessaire)
    all_gossips = self.all
    all_gossips[id.to_i - 1]  # Ajuste en fonction de la logique de ton index
  end

end
# Gossip.new.save
# Gossip.new("super_auteur_test", "super_gossip_test").save
# binding.pry