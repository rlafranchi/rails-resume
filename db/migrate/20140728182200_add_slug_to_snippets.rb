class AddSlugToSnippets < ActiveRecord::Migration
  def change
    add_column :snippets, :slug, :string
  end
end
