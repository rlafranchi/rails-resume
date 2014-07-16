class AddColumnReferences < ActiveRecord::Migration
  def change
    add_column :references, :resume_id, :integer
  end
end
