class DaysController < ApplicationController
  before_action :authenticate_user!
  # create functios is duplicate with the things in PairsController
  def create
    @days = Day.all
    @unassigned_days = []

    @days.each do |day|
      day.pairs.each do |pair|
        if pair.date == nil
          @unassigned_days << day
        end
      end
    end

  end

  #magic_match is not needed here, we generate 7 days in PairsController 
  def magic_match
    @students = []

    @users = User.all
    @users.each do |user|
      @students << user unless user.admin == true
    end

    loop do
     if @students.length % 2 != 0
       pair = @students.combination(3).to_a.sample
       @pair = Pair.create(pair_params)
       @pair.day_id = 1
       @pair.users = pair
       pair.each do |student|
         @students.delete(student)
       end
     else
       pair = @students.combination(2).to_a.sample
       @pair = Pair.create(pair_params)
       @pair.users = pair
       @pair.day_id =
       pair.each do |student|
         @students.delete(student)
        end
     end
       if @students.length == 0
      break
       end
     end
   end





end
