require 'nokogiri'
require 'open-uri'

# # Fetch and parse the HTML document
# document = Nokogiri::HTML(URI.open(url))

# page = Nokogiri::HTML(URI.open("ton_url_a_scrapper.com"))
# all_emails_links = page.xpath('/mettre_ici_le_XPath

# url = 'https://coinmarketcap.com/all/views/all/'

# get html url
# document = Nokogiri::HTML(URI.open(URI))

doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

hash={}

#//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[2]/td[2]/div/a[2]

# init array
# cryptos = []

# crypto_symbol = document.xpath("//tr//td[3]/div/a/span[contains(@class, 'coin-item-symbol')]")
# crypto_names = document.xpath("//tr//td[2]/div/a/p[contains(@class, 'coin-item-name')]")
# crypto_prices = document.xpath("//tr//td[5]/div/a/span")

# puts doc.xpath("//tr[1]/td[2]/div/a[2]").text

# #//*[@id="__next"]/div[2]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[1]/td[2]/div/a[1]
# Afficher le texte du premier lien <a> trouvé
# puts name

# prix = doc.xpath("//tr[1]/td[5]/div/span").text
# puts prix

# crypto_names.each_with_index do |name, index|
#   crypto_name = name.text.strip
#   crypto_price = crypto_prices[index].text.gsub(/[,$]/, '').to_f
#   cryptos << { crypto_name => crypto_price }
#   puts "Crypto: #{crypto_name}, Price: #{crypto_price}"
# end

# puts cryptos

# cryptos=doc.xpath("//tr/td[2]/div/a[2]").map {|crypto| crypto.text }
# valeurs=doc.xpath("//tr/td[5]/div/span").map {|crypto| crypto.text }
# hash = cryptos.zip(valeurs).to_h

# puts hash


# doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

# hash={}
doc.xpath("//tr/td[2]/div/a[2]").length.times do |i|
  hash[doc.xpath("//tr[#{i+1}]/td[2]/div/a[2]").text]=doc.xpath("//tr[#{i+1}]/td[5]/div/span").text.gsub('$', '').gsub(',', '').to_f
end
puts hash