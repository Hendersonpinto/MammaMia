
2.times do
 user = User.new(
   name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   address: Faker::Address.full_address,
   email: Faker::Internet.email
 )
 user.save!
end



10.times do
 mom = Mom.new(
   name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   address: Faker::Address.full_address,
   price: Faker::Number.within(range: 50..100)
 )
 mom.save!
end
