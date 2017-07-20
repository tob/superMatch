class AddDayToPairs < ActiveRecord::Migration[5.1]
  def change
    add_reference :pairs, :day, foreign_key: true
  end
end
