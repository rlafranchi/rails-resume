class AddColumnSkills < ActiveRecord::Migration
  def change
    add_column :skills, :resume_id, :integer
  end
end
