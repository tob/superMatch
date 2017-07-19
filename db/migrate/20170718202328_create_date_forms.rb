class CreateDateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :date_forms do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
