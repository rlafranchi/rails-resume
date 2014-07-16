class AddColumnObjectives < ActiveRecord::Migration
  def change
    add_column :objectives, :resume_id, :integer
  end
end
