require 'factory_girl_rails'
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities_list = [
    'Тверь',
    'Ростов-на-Дону',
    'Москва',
    'Брянск',
    'Великий Новгород',
    'Новосибирск',
    'Кострома',
    'Белгород',
    'Липецк',
    'Краснодар'
]

cities_list.each do |name|
  City.create(name: name)
end

10.times do |i|
  FactoryGirl.create(:bank)
end

10.times do |i|
  Branch.create(address: "Лазурная ул #{i}", bank_id: rand(1...10))
end

20.times do |i|
  FactoryGirl.create(:company,
                     title: Faker::Company.name,
                     inn:   Faker::Number.number(10),
                     address: Faker::Address.street_address,
                     registration_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                     okved: Faker::Number.number(1),
                     comment: Faker::Lorem.paragraph(2),
                     phones: Faker::PhoneNumber.cell_phone,
                     website: Faker::Internet.domain_name,
                     kind:  Random.rand(0...1))
end

# 30.times do |i|
#   Company.create(title: "СпецСтрой #{i}", inn: "141234421#{i}", address: "ул Строительная #{i}", registration_date: DateTime.new(2015, 6, rand(1...30)), okved: "#{i}", comment: "Комментарий ##{i}")
# end

faces_list = [
    'Лидин Вацлав Архипович',
    'Янцижин Мартын Евграфович',
    'Черников Изяслав Вячеславович',
    'Чичваркина Светлана Игоревна',
    'Досаев Терентий Феоктистович',
    'Сомкина Анастасия Трофимовна',
    'Агапов ﻿Август Вячеславович',
    'Кривоухова Изольда Юлиевна',
    'Ромазанова Галина Брониславовна',
    'Чупринин Родион Адамович',
    'Богатырев Вадим Валериевич',
    'Борщёва Лилия Анатолиевна',
    'Климов Егор Никонович',
    'Игонин Евгений Афанасиевич',
    'Хабибуллина Наталья Евгениевна',
    'Юнге Эммануил Маркович',
    'Решетов Виталий Гордеевич',
    'Смолянинова Эльвира Афанасиевна',
    'Зубков Семен Остапович',
    'Мухаметов Лукьян Михеевич',
    'Малкина Екатерина Андрияновна',
    'Островский Федор Ерофеевич',
    'Гурковский Ярослав Иннокентиевич',
    'Витюгова Эльвира Родионовна',
    'Мельник Михаил Моисеевич',
    'Черкасов Платон Платонович',
    'Ерохина Агния Георгиевна',
    'Брант Михаил Елизарович',
    'Ягафаров Осип Михеевич',
    'Лукашенко Кузьма Евгениевич',
    'Унтилов Вячеслав Епифанович',
    'Юшкова Маргарита Иосифовна',
    'Ясева Татьяна Захаровна',
    'Ямковой Ксения Марковна',
    'Корбылев Юлиан Архипович',
    'Куклева Ника Николаевна',
    'Яблонцева Ариадна Олеговна',
    'Ласман Пимен Григориевич',
    'Тамаркина Виктория Анатолиевна',
    'Мышкина Ярослава Михеевна',
    'Масмеха Тамара Трофимовна',
    'Юмашев Назар Ипатиевич',
    'Шуршалина Альбина Владиленовна',
    'Ивкин Георгий Кириллович',
    'Завразина Дарья Виталиевна'
]

faces_list.each do |name|
  FactoryGirl.create(:face, full_name: name, personal_phone: "9876543#{rand(10...99)}", work_phone: "9876#{rand(10...99)}543")
end

50.times do |i|
  BankAccount.create(opening_date: DateTime.new(2015, 6, rand(1...30)), status: rand(1...5), comment: "Комментарий ##{i}", branch_id: rand(1...20), company_id: (1...30))
end

50.times do
  Assignment.create(date: DateTime.new(2015, 6, rand(1...30)), position: rand(0...1), face_id: rand(1...45), company_id: (1...30))
end

FactoryGirl.create(:user)