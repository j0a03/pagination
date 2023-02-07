# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

250.times do
Car.create(
    nome: Faker::Vehicle.make,
    ano: Faker::Date.forward,
    cor: Faker::Color.color_name,
    desc: Faker::Vehicle.standard_specs,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
    km: Faker::Number.number(digits: 6),
)
end

Car.all.each do |car|
    puts "nome do carro: #{car.nome}"
    puts "ano do carro: #{car.ano}"
    puts "cor do carro: #{car.cor}"
    puts "desc do carro: #{car.desc}"
    puts "preço do carro: #{car.price}"     
end