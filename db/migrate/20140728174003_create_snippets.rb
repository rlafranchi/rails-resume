class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.integer :resume_id
      t.string :title
      t.text :description
      t.text :code
      t.timestamps
    end
  end
end
