class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :job_title
      t.string :company
      t.string :city
      t.string :state
      t.string :phone
      t.timestamps
    end
  end
end
