class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user == current_user
  end

  def show
    @user = User.find(params[:id])
    @profile = current_user.profile
    @pair = Pair.new

    @all_pairs = Pair.all
    @pairs =  []
    @all_pairs.each do |pair|
      if pair.date != nil
        @pairs << pair
      end
    end

    @all_days = Day.all
    @chosen_days = []
    @all_days.each do |day|
      if day.pairs.first.date != nil
        @chosen_days << day
      end
    end

  end
end
