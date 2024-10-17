
require 'nokogiri'
require 'open-uri'

class Scrapper
  attr_reader :emails

  def initialize
    @emails = {}
  end

  # Scrappe un email à partir d'une URL de mairie
  def get_townhall_email(townhall_url)
    doc = Nokogiri::HTML(URI.open(townhall_url))
    mail = doc.css('.send-mail').text
    mail
  end

  # Scrappe les URLs des mairies et les emails
  def get_townhall_urls(page_number)
    doc = Nokogiri::HTML(URI.open("https://lannuaire.service-public.fr/navigation/ile-de-france/val-d-oise/mairie?page=#{page_number}"))
    villes = doc.css('a.fr-link').map { |node| node.text.gsub("Mairie - ", "") }.drop(4)
    townhall_urls = doc.css('a.fr-link').map { |node| node['href'] }.drop(4)
    emails = townhall_urls.map { |url| get_townhall_email(url) }
    villes.zip(emails).to_h
  end

  # Lance le scrapping sur plusieurs pages et fusionne les résultats
  def perform
    7.times do |i|
      @emails = @emails.merge(get_townhall_urls(i + 1))
    end
    @emails
  end
end