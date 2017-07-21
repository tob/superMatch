# class Api::PairsController < ApplicationController
#   skip_before_action :verify_authenticity_token
#   # before_action :authenticate_user!
#
#
#   def get_unassigned_days
#      @days = Day.all
#      @unassigned_days = []
#      @days.each do |day|
#        if day.pairs.first.date == nil
#          @unassigned_days << day
#        end
#      end
#    end
#
#    def set_students
#      @students = []
#      @users = User.all
#      @users.each do |user|
#        @students << user unless user.admin
#      end
#    end
#
#    def generate_7_days
#     set_students
#     @pairs = []
#     @pairs = @students.combination(2).to_a
#     @possible_match = @pairs.length
#     @days_cycle_numb = 7
#     @days_cycle = []
#     @day = []
#     @validate_day = []
#
#     @total_pairs = @students.combination(2).to_a
#
#     #make_cycle
#       while @days_cycle.length < 7 && @total_pairs.length > 0
#         daily_students = @students.clone
#         @available_pairs = daily_students.combination(2).to_a
#
#         while daily_students.size > 0 && @available_pairs.length > 0
#           @pairs = daily_students.combination(2).to_a
#           @available_pairs = @pairs & @total_pairs
#           @pair =  @available_pairs.sample
#
#           @available_pairs.each do |team|
#             if team == @pair
#                 @day << team
#                 # @available_pairs.delete(team)
#                 @total_pairs.delete(team)
#                 @pair.each do |student|
#                    daily_students.delete(student)
#                 end
#               else
#             end
#           end
#         end
#
#         if @available_pairs == [] && @day.length < 10
#             @day.each do |pair|
#               @total_pairs << pair
#             end
#           @day = []
#           @available_pairs = @total_pairs
#           next
#         else
#           @days_cycle << @day
#         end
#         @day = []
#         @available_pairs = []
#     end
#
#     @days_cycle.each do |day|
#       @day = Day.create!
#       day.each do |pair|
#         Pair.create!(date: nil, users: pair, day: @day)
#       end
#     end
#
#    end
#
#
#   def create
#     get_unassigned_days
# # guarantee that unassigned_days is not empty
# # you generate another 7 days and put in the unassigned_days
#     if @unassigned_days == []
#       generate_7_days
#       get_unassigned_days
#     end
#
#     @pair = Pair.new(pair_params)
#
#     date_already_present = false
#     Day.all.each do |day|
#       if day.pairs.first.date == @pair.date
#         date_already_present = true
#       end
#     end
#
# # admin is not allowed to generate a pair for the past days
#     valid_date = true
#     # if @pair.date < Date.today
#     #   valid_date = false
#     # end
#
#     if !date_already_present && valid_date
#       @this_day = @unassigned_days.sample
#
#       @this_day.pairs.each do |pair|
#         pair.date = @pair.date
#         pair.save
#       end
#
#       @this_day.save
#     else
#       #  notice: "The match of the day already exists!!!"
#     end
#
#   end
#
#    private
#    def pair_params
#      params.require(:pair).permit(:date)
#    end
# end
