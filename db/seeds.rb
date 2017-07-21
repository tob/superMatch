Pair.destroy_all
User.destroy_all


teacher = User.create!({email: "teacher@supermatch.com", password: "teacher", admin: true})

student = User.create!({email: "student@supermatch.com", password: "student", admin: false})

teacher = User.create!({email: Faker::Internet.email, password:Faker::Internet.password, admin: true})

students = [student]

for user in 1..19
  user = User.create!({email: Faker::Internet.email, password:Faker::Internet.password, admin: false})
  students << user
end

# day1 = Day.create!
#
# pair1 = Pair.create!(date: nil , users: [students.sample,students.sample], day: day1)
# pair2 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[students.sample,students.sample], day: day1)
# pair3 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[students.sample,students.sample], day: day1)
# pair4 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[students.sample,students.sample], day: day1)
# pair5 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[students.sample,students.sample], day: day1)
#
#

profile1 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/1_xuar4n.jpg", user_id: 1  })
profile2 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638771/2_h32itv.jpg", user_id: 2  })
profile3 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/3_c6heaj.jpg", user_id: 3  })
profile4 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/4_ew6w50.jpg", user_id: 4  })
profile5 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/5_xpdwk3.jpg", user_id: 5  })
profile6 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/6_gosvu6.png", user_id: 6  })
profile7 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/7_pmpwck.jpg", user_id: 7  })
profile8 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/8_htefsv.jpg", user_id: 8  })
profile9 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/9_d3kisi.jpg", user_id: 9  })
profile10 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/10_smhlpp.jpg", user_id: 10  })
profile11 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638772/11_fpaazt.jpg", user_id: 11  })
profile12 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638773/12_lguq3k.jpg", user_id: 12  })
profile13 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638774/13_e0ykxi.jpg", user_id: 13  })
profile14 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638773/14_jqxxze.jpg", user_id: 14  })
profile15 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638773/15_xzy4ei.jpg", user_id: 15  })
profile16 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638773/16_te7p9a.jpg", user_id: 16  })
profile17 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638773/17_yfppb2.jpg", user_id: 17  })
profile18 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638774/18_pqqdyu.png", user_id: 18  })
profile19 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638784/19_al7gxm.png", user_id: 19  })
profile20 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638774/20_xwn5x8.jpg", user_id: 20  })
profile21 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638774/21_snacib.png", user_id: 21  })
profile22 = Profile.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, remote_image_url: "http://res.cloudinary.com/supermay/image/upload/v1500638775/22_takikw.png", user_id: 22  })




# @students = []
# admin = [true,false]
# for user in 0..10
#   user = User.create!({email: Faker::Internet.email, password:Faker::Internet.password, admin: admin.sample})
#   if user.admin == false
#     @students << user
#   end
# end

#
# divider = "*"*40
#
#   User.all.each do |user|
#     puts "#{divider} \n #{user.email} - #{user.encrypted_password} - #{user.admin} \n"
#   end
#
# puts "*"*30
# print @students
#
# puts "*"*30
# @students << student1.id
# print @students
#
#
# puts "*"*30
# pair = @students.combination(2).to_a.sample
# print pair
#
# puts "*"* 50
# puts @students.length
#
#
#
#
# day1_result = []
# loop do
#   if @students.length % 2 != 0
#     pair = @students.combination(3).to_a.sample
#     team = Team.create!(pair: pair)
#     day1_result << pair
#     pair.each do |student|
#       @students.delete(student)
#     end
#   else
#     pair = @students.combination(2).to_a.sample
#     team = Team.create!(pair: pair)
#     day1_result << pair
#     pair.each do |student|
#       @students.delete(student)
#     end
#   if @students.length == 0
#     break
#   end
# end
# end
#
# team1 = Team.create(pair: [1,2,3,4])
#
# puts "*"*50
# print day1_result
