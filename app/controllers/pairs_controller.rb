class PairsController < ApplicationController

  def create
    get_unassigned_days
# guarantee that unassigned_days is not empty
# you generate another 7 days and put in the unassigned_days

    if @unassigned_days == []
      generate_7_days
      get_unassigned_days
    end

    @pair = Pair.new(pair_params)
    @this_day = @unassigned_days.sample

    @this_day.pairs.each do |pair|
      pair.date = @pair.date
    end

    @this_day.save

  end

   private
   def pair_params
     params.require(:pair).permit(:date)
   end



  def get_unassigned_days
     @days = Day.all
     @unassigned_days = []

     @days.each do |day|
       if day.pairs.first.date == nil
         @unassigned_days << day
       end
     end
   end



   def generate_7_days

   end

















end
