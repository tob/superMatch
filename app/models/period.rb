class Period < ApplicationRecord
  has_many :days



   def initialize

   end

   def super_match
     set_variables
     make_cycle
   end

   def make_cycle
     #make_cycle
     while @days_cycle.length < 7 || @total_pairs.length > 0
         daily_students = @students
         @available_pairs = daily_students.combination(2).to_a

         make_pairs
         save_reset_day
     end
   end

   def set_students
     @students = []
     @users = User.all
     @users.each do |user|
       @students << user unless user.admin == true
     end
   end

   def set_pairs
     @pairs = []
     @total_pairs = @students.combination(2).to_a
     @possible_match = @pairs.length
     @pairs = @total_pairs
   end

   def set_days_cycle_length
     @days_cycle_numb = @students.size - 1
     @days_cycle = []
     @day = []
     @validate_day = []
   end

   def set_variables
     set_students
     set_pairs
     set_days_cycle_length
   end

   def add_pair_to_day
     @available_pairs.each do |team|
       if team == @pair
           @day << team
           # @available_pairs.delete(team)
           @total_pairs.delete(team)
           @pair.each do |student|
              daily_students.delete(student)
           end
         else #remove it during refactoring
       end
     end
   end

   def save_reset_day
     if @available_pairs == [] && @day.length < 10
         @day.each do |pair|
           @total_pairs << pair
         end
       @day = []
       @available_pairs = @total_pairs
      #  next
     else
       @days_cycle << @day
     end

     @day = []
     @available_pairs = []
   end

   def make_pairs
     while daily_students.size > 0 && @available_pairs.length > 0

       @pairs = daily_students.combination(2).to_a
       @available_pairs = @pairs & @total_pairs
       @pair =  @available_pairs.sample
     add_pair_to_day
     end
   end

   def pair_params
     params.require(:pair).permit(:date)
   end
end
