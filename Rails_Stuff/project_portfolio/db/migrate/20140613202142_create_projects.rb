class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
