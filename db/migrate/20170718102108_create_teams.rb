class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.array :pair

      t.timestamps
    end
  end
end
