require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/scrapper'
require 'services/json_saver'
require 'services/csv_saver'
require 'services/google_saver'

scrapper = Scrapper.new
emails = scrapper.perform

puts "Choisissez le format de sauvegarde : 1) JSON 2) CSV 3) Google Spreadsheet"
choice = gets.chomp.to_i

case choice
when 1
  SaveAsJSON.new(emails).save
  puts "Données sauvegardées en JSON."
when 2
  SaveAsCSV.new(emails).save
  puts "Données sauvegardées en CSV."
when 3
  SaveAsSpreadsheet.new(emails).save
  puts "Données sauvegardées dans Google Spreadsheet."
else
  puts "Choix invalide."
end