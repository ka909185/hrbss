Faker::Config.locale = :ja
20.times do |n|
  name = Faker::Name.name
  code = Faker::Number.number(7)
  date = Faker::Date.birthday(20, 64)
  Base.create!(
    name: name,
    employeecode: code,
    birthday: date,
    organization_id: 10,
    sex: "man",
    kanichi: "kan",
    kumiai: "hikumi",
    Saikoyo: false,
    status_id: 1,
    yakushoku_id: 3,
    sikaku_id: 9,
    koyou_id: 2,
    ninmei_date: "2015-12-31"
  )
end
