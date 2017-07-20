class DaysController < ApplicationController
  def create
    @period = Period.create
    @period.save
    @day = Day.create
    @day.period_id = @period.id
    @day.save
  end

end
