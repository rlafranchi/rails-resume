class AddDatesToJobs < ActiveRecord::Migration
  def change
    add_column :experiences, :start_date, :string
    add_column :experiences, :end_date, :string
  end
end
