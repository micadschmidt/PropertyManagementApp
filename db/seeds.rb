# db/seeds.rb

# Create users
user1 = User.create(name: 'Lucas', email: 'lucas@gmail.com', password: '123456')
user2 = User.create(name: 'Pedro', email: 'pedro@gmail.com', password: '1234dfd')
user3 = User.create(name: 'Coco', email: 'coco@gmail.com', password: '123rytr')

puts 'Creating properties'

# Create sample properties with photos
property1 = Property.create(
  property_type: 'Sale',
  price: 250000,
  address: '123 Main St',
  area: 200,
  rooms: 3,
  bathrooms: 2,
  user: user1
)

# Attach three or more photos to property1
3.times do |i|
  property1.photos.attach(
    io: URI.open("https://images.unsplash.com/photo-1595525101922-d7febbdd796d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
    filename: "photo#{i + 1}.jpg",
    content_type: 'image/jpg'
  )
end

property2 = Property.create(
  property_type: 'Lease',
  price: 1500,
  address: '456 Elm St',
  area: 150,
  rooms: 2,
  bathrooms: 1,
  user: user1
)

# Attach three or more photos to property2
3.times do |i|
  property2.photos.attach(
    io: URI.open("https://images.unsplash.com/photo-1573548842355-73bb50e50323?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80"),
    filename: "photo#{i + 4}.jpg",
    content_type: 'image/jpg'
  )
end

property3 = Property.create(
  property_type: 'Sale',
  price: 350000,
  address: '789 Oak St',
  area: 180,
  rooms: 4,
  bathrooms: 3,
  user: user2
)

# Attach three or more photos to property3
3.times do |i|
  property3.photos.attach(
    io: URI.open("https://images.unsplash.com/photo-1626260113600-84c917a39f59?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
    filename: "photo#{i + 7}.jpg",
    content_type: 'image/jpg'
  )
end


puts 'Seed data created!'
