class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string "name"
      t.string "answer"
      t.string "fail1"
      t.string "fail2"
      t.string "fail3"

      t.timestamps
    end
  end
end
