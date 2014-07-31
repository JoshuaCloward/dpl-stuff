class ChangeColunsForAnimals < ActiveRecord::Migration
  def change
    remove_column :animals, :hungry
    rename_column :animals, :born_on, :birthday
    add_column :animals, :trained, :boolean, default: false
  end
end
