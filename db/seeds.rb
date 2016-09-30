# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  first_name: "Luis",
  last_name: "Mendoza",
  email: "lemendoza@gbm.com.mx",
  password: "luismendoza",
  phone_number: "5535668392",
  gender: "Male",
  id_type: "IFE",
  id_number: "989382793872",
  address_street: "Calle",
  address_number: 1,
  address_city: "Mexico",
  address_zip_code: 05100,
  user_type: "user",
  balance: 14500.0
)

User.create(
  first_name: "Luis",
  last_name: "Mendoza",
  email: "luis@mendoza.io",
  password: "luismendoza",
  phone_number: "5535668392",
  gender: "Male",
  id_type: "IFE",
  id_number: "989382793872",
  address_street: "Calle",
  address_number: 1,
  address_city: "Mexico",
  address_zip_code: 05100,
  user_type: "user",
  balance: 14500.0
)

User.create(
  first_name: "Juan",
  last_name: "Pérez",
  email: "juan@gbm.com.mx",
  password: "luismendoza",
  phone_number: "5535668392",
  gender: "Male",
  id_type: "IFE",
  id_number: "989382793872",
  address_street: "Calle",
  address_number: 1,
  address_city: "Mexico",
  address_zip_code: 05100,
  user_type: "user",
  balance: 15000.0
)

User.create(
  first_name: "Pedro",
  last_name: "Pérez",
  email: "pedro@gbm.com.mx",
  password: "luismendoza",
  phone_number: "5535668392",
  gender: "Male",
  id_type: "IFE",
  id_number: "989382793872",
  address_street: "Calle",
  address_number: 1,
  address_city: "Mexico",
  address_zip_code: 05100,
  user_type: "user",
  balance: 15000.0
)

User.create(
  first_name: "Netflix",
  last_name: "Service",
  email: "netflix@user.com",
  password: "password",
  phone_number: "5555555555",
  gender: "Other",
  id_type: "none",
  id_number: "1",
  address_street: "l",
  address_number: 1,
  address_city: "T",
  address_zip_code: 0,
  user_type: "service"
)

User.create(
  first_name: "Spotify",
  last_name: "Service",
  email: "spotify@user.com",
  password: "password",
  phone_number: "5555555555",
  gender: "Other",
  id_type: "none",
  id_number: "1",
  address_street: "l",
  address_number: 1,
  address_city: "T",
  address_zip_code: 0,
  user_type: "service"
)

User.create(
  first_name: "Telcel",
  last_name: "Service",
  email: "telcel@user.com",
  password: "password",
  phone_number: "5555555555",
  gender: "Other",
  id_type: "none",
  id_number: "1",
  address_street: "l",
  address_number: 1,
  address_city: "T",
  address_zip_code: 0,
  user_type: "service"
)

Transfer.create(sender_id: 2, receiver_id: 1, amount: 15000)
Transfer.create(sender_id: 1, receiver_id: 3, amount: 500)
