class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :pair, :array => true
      
      t.timestamps
    end
  end
end
