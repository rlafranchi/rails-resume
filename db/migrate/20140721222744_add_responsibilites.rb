class AddResponsibilites < ActiveRecord::Migration
  def change
    add_column :experiences, :responsibilities, :text
  end
end
