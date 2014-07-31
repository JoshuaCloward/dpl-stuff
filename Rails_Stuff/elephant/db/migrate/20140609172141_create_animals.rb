class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :species

      t.timestamps
    end
  end
end
