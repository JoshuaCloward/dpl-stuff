class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :company
      t.text :notes
      t.string :twitter_handle
      t.datetime :birthday

      t.timestamps
    end
  end
end
