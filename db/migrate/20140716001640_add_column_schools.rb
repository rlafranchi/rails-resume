class AddColumnSchools < ActiveRecord::Migration
  def change
    add_column :schools, :resume_id, :integer
  end
end
