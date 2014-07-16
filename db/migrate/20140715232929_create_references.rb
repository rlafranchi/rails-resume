class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :relationship
      t.string :company
      t.string :phone
      t.string :email
      t.timestamps
    end
  end
end
