class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end
