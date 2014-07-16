class AddColumnHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :resume_id, :integer
  end
end
