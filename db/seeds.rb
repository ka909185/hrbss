Faker::Config.locale = :ja
20.times do |n|
  name = Faker::Name.name
  code = Faker::Number.number(7)
  date = Faker::Date.birthday(20, 64)
  Base.create!(
    name: name,
    employeecode: code,
    birthday: date
  )
end
