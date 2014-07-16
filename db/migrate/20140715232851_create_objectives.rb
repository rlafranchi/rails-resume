class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.text :description
      t.timestamps
    end
  end
end
