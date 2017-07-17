User.delete_all


student1 = User.create!({email: "student@supermatch.com", password: "student", admin: false})

teacher1 = User.create!({email: "teacher@supermatch.com", password: "testtest", admin: true})


admin = [true,false]
for user in 0..15
  user = User.create!({email: Faker::Internet.email, password:Faker::Internet.password, admin: admin.sample})
end


divider = "*"*40

  User.all.each do |user|
    puts "#{divider} \n #{user.email} - #{user.encrypted_password} - #{user.admin} \n"
  end
