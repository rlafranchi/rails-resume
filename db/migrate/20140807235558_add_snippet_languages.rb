class AddSnippetLanguages < ActiveRecord::Migration
  def change
    add_column :snippets, :programming_language, :string
  end
end
