# 01_cryptocurrencies.rb

crypto_names = ["Bitcoin", "Ethereum", "XRP", "Bitcoin Cash", "EOS", "Litecoin", "Cardano", "Stellar", "IOTA", "Tether"]
crypto_prices = ["6558.07", "468.95", "0.487526", "762.84", "8.86", "85.26", "0.151268", "0.206756", "1.18", "0.998033"]

def create_crypto_hash(names, prices)
  crypto_hash = {}
  names.each_with_index do |name, index|
    crypto_hash[name] = prices[index].to_f
  end
  crypto_hash
end

def max_value_crypto(crypto_hash)
  max_value = crypto_hash.values.max
  crypto_hash.each do |name, price|
    return [max_value, name] if price == max_value
  end
end

def min_value_crypto(crypto_hash)
  min_value = crypto_hash.values.min
  crypto_hash.each do |name, price|
    return [min_value, name] if price == min_value
  end
end

def cryptos_below_6000(crypto_hash)
  crypto_hash.select { |name, price| price < 6000 }
end

def most_expensive_below_6000(crypto_hash)
  below_6000 = cryptos_below_6000(crypto_hash)
  max_price = below_6000.values.max
  below_6000.each do |name, price|
    return [name, max_price] if price == max_price
  end
end

crypto_hash = create_crypto_hash(crypto_names, crypto_prices)

max_crypto = max_value_crypto(crypto_hash)
puts "La crypto-monnaie avec la plus grande valeur est #{max_crypto[1]} avec un prix de #{max_crypto[0]}."

min_crypto = min_value_crypto(crypto_hash)
puts "La crypto-monnaie avec la plus petite valeur est #{min_crypto[1]} avec un prix de #{min_crypto[0]}."

puts "Les devises dont le cours est inférieur à 6000 sont :"
cryptos_below_6000.each { |name, price| puts "#{name}: #{price}" }

most_expensive_below_6000 = most_expensive_below_6000(crypto_hash)
puts "La devise la plus chère parmi celles dont le cours est inférieur à 6000 est #{most_expensive_below_6000[0]} avec un prix de #{most_expensive_below_6000[1]}."
