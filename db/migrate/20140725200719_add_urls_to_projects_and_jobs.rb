class AddUrlsToProjectsAndJobs < ActiveRecord::Migration
  def change
    add_column :experiences, :url, :string
    add_column :projects, :url, :string
  end
end
