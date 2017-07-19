class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])
    @pair = Pair.new
  end

  def edit

  end

end
  def update

end
