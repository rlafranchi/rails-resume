class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
