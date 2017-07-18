class Api::TeamsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def index
    render status: 200, json: {
      teams: Team.all
    }.to_json
  end

  def show
    team = Team.find(params[:id])

    render status: 200, json: {
      team: team
    }.to_json
  end

  def destroy
    team = Team.find(params[:id])
    team.destroy

    render status: 200, json: {
      message: "Team deleted"
    }.to_json
  end

  def update
    team = Team.find(params[:id])
    if team.update(team_params)
      render status: 200, json: {
        message: "Team updated",
        team: team
      }.to_json
    else
       render status: 422, json: {
        message: "The team could not be updated",
        errors: team.errors
      }.to_json
    end
  end

  def create
    magic_match
  end

  def magic_match

    @students = []
    @teachers = []
    User.all.each do |user|
      if user.admin == false
        @students << user
      else
        @teachers << user
      end
    end

    loop do
      if @students.length % 2 != 0
        pair = @students.combination(3).to_a.sample
        @team = Team.create!(pair: pair)
        pair.each do |student|
          @students.delete(student)
        end
      else
        pair = @students.combination(2).to_a.sample
        @team = Team.create!(pair: pair)
        pair.each do |student|
          @students.delete(student)
        end
        if @students.length == 0
          break
        end
      end
    end
  end

  private

    def team_params
      params.require(:team).permit(:pair)
    end

end
