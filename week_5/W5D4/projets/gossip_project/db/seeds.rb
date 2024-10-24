require 'faker'

# Create Cities
10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

# Create Users
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: rand(18..70),
    city: City.all.sample
  )
end

# Create Gossips
20.times do
  Gossip.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user: User.all.sample
  )
end

# Create Tags
10.times do
  Tag.create(title: "##{Faker::Lorem.word}")
end

# Assign tags to gossips
Gossip.all.each do |gossip|
  gossip.tags << Tag.all.sample(rand(1..3))
end

# Create PrivateMessages
5.times do
  PrivateMessage.create(
    content: Faker::Lorem.sentence,
    sender: User.all.sample,
    receiver: User.all.sample
  )
end

# Create Comments
20.times do
  Comment.create(
    content: Faker::Lorem.sentence,
    user: User.all.sample,
    gossip: Gossip.all.sample
  )
end

# Create Likes // Thanks ChatGPT
20.times do
  likeable = [Gossip.all.sample, Comment.all.sample].sample # Randomly pick a gossip or a comment
  if likeable.is_a?(Gossip)
    Like.create(user: User.all.sample, gossip: likeable) # Assign gossip
  elsif likeable.is_a?(Comment)
    Like.create(user: User.all.sample, comment: likeable) # Assign comment
  end
end


