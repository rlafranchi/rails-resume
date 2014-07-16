class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
