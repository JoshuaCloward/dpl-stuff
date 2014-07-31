class CreateAssignments < ActiveRecord::Migration
  def change
      create_table :assignments do |t|
      t.belongs_to :user
      t.text :text
      t.boolean :complete, default: false
    end
      add_index :assignments, :user_id

    
  end
end
