class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])
    @pair = Pair.new
    @all_pairs = Pair.all
    @pairs =  []
    @all_pairs.each do |pair|
      if pair.date != nil
        @pairs << pair
      end
    end

  end

  def edit

  end

  def update
  end

end
