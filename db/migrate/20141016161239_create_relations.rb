class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :follower
      t.references :following

      t.timestamps
    end
    add_index :relations, :follower_id
    add_index :relations, :following_id
  end
end
