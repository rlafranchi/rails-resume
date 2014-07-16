class AddColumnCustoms < ActiveRecord::Migration
  def change
    add_column :customs, :resume_id, :integer
  end
end
