Pair.destroy_all
User.destroy_all


student1 = User.create!({email: "student1@supermatch.com", password: "student", admin: false})
student2 = User.create!({email: "student2@supermatch.com", password: "student", admin: false})
student3 = User.create!({email: "student3@supermatch.com", password: "student", admin: false})
student4 = User.create!({email: "student4@supermatch.com", password: "student", admin: false})
student5 = User.create!({email: "student5@supermatch.com", password: "student", admin: false})
student6 = User.create!({email: "student6@supermatch.com", password: "student", admin: false})
student7 = User.create!({email: "student7@supermatch.com", password: "student", admin: false})
student8 = User.create!({email: "student8@supermatch.com", password: "student", admin: false})
student9 = User.create!({email: "student9@supermatch.com", password: "student", admin: false})
student10 = User.create!({email: "student10@supermatch.com", password: "student", admin: false})
student11 = User.create!({email: "student11@supermatch.com", password: "student", admin: false})

teacher = User.create!({email: "teacher@supermatch.com", password: "testtest", admin: true})
#
# pair1 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[student1, student2])
# pair2 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[student3, student4])
# pair3 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[student5, student6])
# pair4 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[student7, student8])
# pair5 = Pair.create!(date: Faker::Date.between(15.days.ago, Date.today), users:[student9, student10,student11])

















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
