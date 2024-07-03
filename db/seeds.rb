# db/seeds.rb

User.destroy_all
Contractor.destroy_all
Service.destroy_all
Review.destroy_all


# Create 20 users
20.times do
  User.create!(
    email: Faker::Internet.email,
    password: Devise.friendly_token,
    username: Faker::Internet.username,
    phone_number: Faker::PhoneNumber.phone_number,
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
    address: Faker::Address.full_address,
    avatar: Faker::Avatar.image
  )
end

User.create!(
  email: 'thiago@gmail.com',
  password: '123456',
  username: 'Thiago',
  phone_number: Faker::PhoneNumber.phone_number,
  birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
  address: Faker::Address.full_address,
  avatar: Faker::Avatar.image
)



# Create 10 contractors
10.times do
  Contractor.create!(
    company_name: Faker::Company.name,
    contact_person: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email,
    avatar: Faker::Avatar.image,
    rating: rand(1..5),
    specialties: Faker::Job.field,
    password_hash: Devise.friendly_token,
    website_url: Faker::Internet.url
  )
end

# Create 30 different services
30.times do
  Service.create!(
    service_name: Faker::Job.title,
    description: Faker::Lorem.sentence,
    price: rand(10.0..200.0),
    duration_minutes: rand(30..120),
    availability: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30.days)
  )
end

# Create 2 reviews per user
User.all.each do |user|
  2.times do
    contractor = Contractor.all.sample
    Review.create!(
      user: user,
      contractor: contractor,
      rating: rand(1..5),
      comment: Faker::Lorem.paragraph
    )
  end
end

puts "seed data created!"
