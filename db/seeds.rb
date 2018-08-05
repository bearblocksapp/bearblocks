# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


rocket=Company.create!(name: "Rocket",subdomain: "rocket",domain: "rocket.bearblocks.localhost")
demo=Company.create!(name: "Demo",subdomain: "demo",domain:"demo.bearblocks.localhost")

User.create!(email: "ali_rocket@rocket.com",password:"pass1234$",company_id: rocket.id)
User.create!(email: "akram_rocket@rocket.com", password: "pass1234$",company_id: rocket.id)
User.create!(email: "tim_rocket@rocket.com", password: "pass1234$",company_id: rocket.id)
User.create!(email: "peter_rocket@rocket.com",password: "pass1234$",company_id: rocket.id)


User.create!(email: "ali_demo@demo.com",password: "pass1234$",company_id: demo.id)
User.create!(email: "akram_demo@demo.com",password: "pass1234$", company_id: demo.id)
User.create!(email: "tim_demo@demo.com",password: "pass1234$", company_id: demo.id)
User.create!(email: "peter_demo@demo.com", password: "pass1234$", company_id: demo.id)





