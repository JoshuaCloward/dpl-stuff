class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.string :message
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :hits, :user_id
  end
end
