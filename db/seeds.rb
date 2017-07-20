Pair.destroy_all
User.destroy_all


teacher = User.create!({email: "teacher@supermatch.com", password: "testtest", admin: true})

student = User.create!({email: "student1@supermatch.com", password: "student", admin: false})

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
#












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
