# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
User.destroy_all

User.create({
    first_name: "Katie",
    last_name: "Smith",
    phone_number: "123-456-7890",
    email: "katie@gmail.com",
    password: "password"
})

User.create({
    first_name: "Travis",
    last_name: "Smith",
    phone_number: "123-456-7891",
    email: "Travis@gmail.com",
    password: "password"
})

Pet.create({
    user_id: 1,
    lost_status: "true",
    name: "Henry",
    species: "Cat",
    gender: "Male",
    size: "Small",
    color: "Orange, White",
    age: "Adult",
    breed: "Tabby",
    temperament: "Friendly",
    comments: "Henry is friendly and sweet!",
    date_lost_or_found: "2019-12-04",
    chip_id: "985A23A456B7981",
    additional_lost_found_info: "Lost near his home.",
    latitude: "39.758194",
    longitude: "-104.980886",
    picture_url: "https://www.thehappycatsite.com/wp-content/uploads/2017/10/Orange-Tabby-Cat-Fascinating-Facts-About-Orange-Cats-HC-long.jpg"
})

Pet.create({
    user_id: 1,
    lost_status: "true",
    name: "Fluffy",
    species: "Cat",
    gender: "Male",
    size: "Small",
    color: "White",
    age: "Kitten",
    breed: "Tabby",
    temperament: "Nervous, friendly",
    comments: "Fluffy is nervous and timid, but once she warms up she is very friendly and sweet!",
    date_lost_or_found: "2019-11-04",
    chip_id: "977B23A477B7990",
    additional_lost_found_info: "Fluffy is an indoor/outdoor who usually comes home in the evenings but hasn't returned since November 4, 2019.",
    latitude: "39.764149",
    longitude: "-105.016586",
    picture_url: "https://www.publicdomainpictures.net/pictures/10000/nahled/1-1276781631XYvY.jpg"
})

Pet.create({
    user_id: 2,
    lost_status: "true",
    name: "Michael",
    species: "Cat",
    gender: "Female",
    size: "Small",
    color: "White",
    age: "Adult",
    breed: "Siamese",
    temperament: "Timid",
    comments: "Michael is timid but a sweet cat.",
    date_lost_or_found: "2019-11-15",
    chip_id: "782C23A456B7091",
    additional_lost_found_info: "Michael got out when the door was left open :(",
    latitude: "39.720662",
    longitude: "-105.042342",
    picture_url: "https://upload.wikimedia.org/wikipedia/commons/5/5a/Siamese_cat_sitting.jpg"
})

Pet.create({
    user_id: 2,
    lost_status: "true",
    name: "Jacky",
    species: "Dog",
    gender: "Female",
    size: "Medium",
    color: "Brown",
    age: "Adult",
    breed: "Pitbull Terrier",
    temperament: "Friendly",
    comments: "Jacky is very friendly but is sometimes shy around new people.",
    date_lost_or_found: "2019-11-07",
    chip_id: "782C23B256B6561",
    additional_lost_found_info: "Jacky got out through a hole in the fence.",
    latitude: "39.687205",
    longitude: "-105.063836",
    picture_url: "https://www.k9web.com/wp-content/uploads/2019/05/Red-Nose-Pitbull-13.jpg"
})

Pet.create({
    user_id: 2,
    lost_status: "true",
    name: "Gus",
    species: "Dog",
    gender: "Male",
    size: "Small",
    color: "White, Brown",
    age: "Adult",
    breed: "Bulldog",
    temperament: "Sweet",
    comments: "Gus is very friendly and sweet!",
    date_lost_or_found: "2019-11-07",
    chip_id: "509D23A456AB091",
    additional_lost_found_info: "Gus got lost during a storm.",
    latitude: "39.643002",
    longitude: "-104.987410",
    picture_url: "https://image.shutterstock.com/image-photo/british-bulldog-puppy-looking-isolated-260nw-1446556445.jpg"
})
