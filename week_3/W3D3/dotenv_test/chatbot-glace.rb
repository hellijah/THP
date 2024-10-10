require 'http'
require 'json'
require 'dotenv'

Dotenv.load

api_key = ENV["CHATGPT_API_SECRET"]
url = "https://api.openai.com/v1/completions"

headers = {
  "Content-Type" => "application/json",
  "Authorization" => "Bearer #{api_key}"
}

data = {
  "prompt" => "je suis 5 goûts de glace",
  "max_tokens" => 10,
  "temperature" => 0.4,
  "model" => "babbage-002"
}

response = HTTP.post(url, headers: headers, body: data.to_json)
response_body = JSON.parse(response.body.to_s)
response_string = response_body['choices'][0]['text'].strip

puts "Voici 5 parfums de glace :"
puts response_string