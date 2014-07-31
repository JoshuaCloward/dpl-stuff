class AddTrainerIdToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :trainer_id, :integer
  end
end
