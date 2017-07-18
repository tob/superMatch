class CreateJoinTablePairUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pairs, :users do |t|
      t.index [:pair_id, :user_id]
      t.index [:user_id, :pair_id]
    end
  end
end
