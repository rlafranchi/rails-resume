class AddSlugs < ActiveRecord::Migration
  def change
    add_column :resumes, :slug, :string
    add_column :users, :slug, :string
    add_column :skills, :slug, :string
    add_column :schools, :slug, :string
    add_column :hobbies, :slug, :string
    add_column :objectives, :slug, :string
    add_column :experiences, :slug, :string
    add_column :projects, :slug, :string
    add_column :references, :slug, :string
    add_column :customs, :slug, :string
  end
end
