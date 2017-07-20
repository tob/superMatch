class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])
    @pair = Pair.new
    @pairs = Pair.all
  end

  def edit

  end

  def update
  end

end
