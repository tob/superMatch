class PairsController < ApplicationController
  # def index
  #   @pairs = Pair.all
  # end
  #
  # def show
  #   @pairs = Pair.all
  # end
  # #
  # def new_create
  #   generate_days_if_no_unassigned_days_left
  #   @day = get_an_unassigned_day
  #   assign_day_to_date @day
  # end
  def create
    @days = Day.all
    @unassigned_days = []

    @days.each do |day|
      if day.pairs.first.date == nil
        @unassigned_days << day
      end
    end

    @pair = Pair.new(pair_params)

    @this_day = @unassigned_days.sample
    @this_day.each do |pair|
      pair.date = @pair.date
    end

    @this_day.save
    
  end




  def create
    @period = Period.create
    @day = Day.create
    @day.period_id = @period.id
    @students = []

    @users = User.all
  end

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



   private
   def pair_params
     params.require(:pair).permit(:date)
   end

end
