class AddColumnsToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :hungry, :boolean, default: true
    add_column :animals, :born_on, :date
  end
end
