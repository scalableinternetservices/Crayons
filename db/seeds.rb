# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




 10.times {

   randomPassword = Devise.friendly_token.first(8)

   user = UserDevise.new(
              :email =>  Faker::Internet.unique.email,
              :password =>  randomPassword,
              :password_confirmation =>  randomPassword,
              :firstname =>  Faker::Name.first_name,
              :lastname =>  Faker::Name.last_name,
              :birthday =>  Time.now,
              :gender =>  Faker::Name.first_name,
              :country => Faker::Address.country
   )

   user.save!
 }

10.times {

  annotation = Annotation.new(
             :label => Faker::Pokemon.name,
             :upvotes => rand(1000),
             :downvotes => rand(1000),
             :user_devises_id => rand(10)
  )
  annotation.save!
}

10.times {



}



 # 20000.times { Photo.create([{title: rand(10)},{user_devises_id: rand(5000)}]) }
 #
 # 100000.times { Annotation.create([{label:rand(5).to_s},{upvotes: rand()},{downvotes:}, {user_devises_id:}]) }

# def populate_data
#
#   UserDevise.destroy_all
#   Photo.destroy_all
#   Annotation.destroy_all
#
#
#   #Bulk insert user devises
#   values = (0..5000).to_a.map {|u|
#     "('"+Faker::Internet.unique.email+"','"+
#         (123456).to_s+"','"+
#         (123456).to_s+"','"+
#         Faker::Name.first_name.gsub(/\W/, ' ')+"','"+
#         Faker::Name.last_name.gsub(/\W/, ' ')+"','"+
#         Time.now.utc.to_s(:db)+"','"+
#         Faker::Address.country+"','"+
#         ")"}.join(",")
#
#   ActiveRecord::Base.connection.execute("INSERT INTO user_devises (email, password, password_confirmation, firstname, lastname, birthday, country) VALUES #{values}")
#
#   #Bulk insert Annotations
#
#   values = (0..100000).to_a.map {|u|
#     "('"+Faker::Pokemon.name+"','"+
#         rand(1000).to_s+"','"+
#         rand(1000).to_s+"','"+
#         rand(5000).to_s+"','"+
#         ")"}.join(",")
#
#   ActiveRecord::Base.connection.execute("INSERT INTO annotations (label, upvotes, downvotes, user_devises_id) VALUES #{values}")
#
# #   values = (0..50000).to_a.map {|u|
# #     "("+u.to_s+","+
# #         rand(research_areas.size).to_s+",'"+
# #         Time.now.utc.to_s(:db)+"','"+
# #         Time.now.utc.to_s(:db)+"'"+
# #         ")"}.join(",")
# #
# #
#   ActiveRecord::Base.connection.execute("INSERT INTO photos (title, user_devise_id) VALUES #{values}")
#
#   p "Created #{Professor.count} professor profiles"
#   p "Created #{Student.count} student profiles"t
# end
#
# p "Currently #{Professor.count} professor profiles exist"
# if Professor.count != 50001
#   puts("Populate data")
#   populate_data
# else
#   puts("Data alread exists. No need to re-enter data.")
