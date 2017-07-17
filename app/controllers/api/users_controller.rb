class Api::UsersController < ApplicationController
  def index
    render status: 200, json: {
      rooms: User.all
    }.to_json
  end
end
