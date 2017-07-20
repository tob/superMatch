class PairsController < ApplicationController
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

   private
   def pair_params
     params.require(:pair).permit(:date)
   end

end
