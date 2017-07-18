class TeamsController < ApplicationController

  def index
    magic_match
    @teams = Team.all
  end

  def magic_match

    @students = []
    @teachers = []
    User.all.each do |user|
      if user.admin == false
        @students << user.id
      else
        @teachers << user.id
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

end
