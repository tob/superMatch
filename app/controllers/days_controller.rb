class DaysController < ApplicationController

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


end
