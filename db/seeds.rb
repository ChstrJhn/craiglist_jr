require 'faker'
require 'date'


car_repair = Category.create({name: "Car Repair"})
part_time_jobs = Category.create({name: "Part-time Jobs"})
housing_rental = Category.create({name: "Housing Rental"})

category_id_array = []
Category.all.each do |category|
  category_id_array.push(category.id)
end

9.times do 
  Post.create ({
    name: Faker::Name.name,
    title: Faker::Commerce.product_name,
    email: Faker::Internet.email,
    price: Faker::Commerce.price,
    category_id: category_id_array.sample,
    description: Faker::Lorem.sentence(5),
    secret_key: ('a'..'z').to_a.shuffle[0,8].join,
    })
end
