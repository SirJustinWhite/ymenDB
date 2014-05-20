namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
        admin = User.create!(name: "Justin White",
                         email: "sirjustinwhite@gmail.com",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)
    99.times do |n|
      first_name  = Faker::Name.first_name
      last_name = Faker::Name.last_name
      cell_phone = Faker::PhoneNumber.cell_phone
      birth_date = "1989-05-23"
      email = Faker::Internet.email
      Student.create!(first_name: first_name,
                   last_name: last_name,
                   cell_phone: cell_phone,
                   birth_date: birth_date,
                   email: email)
    end
  end
end