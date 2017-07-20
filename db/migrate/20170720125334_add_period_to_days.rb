class AddPeriodToDays < ActiveRecord::Migration[5.1]
  def change
    add_reference :days, :period, foreign_key: true
  end
end
