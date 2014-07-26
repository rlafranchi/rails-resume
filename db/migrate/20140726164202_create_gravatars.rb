class CreateGravatars < ActiveRecord::Migration
  def change
    create_table :gravatars do |t|
      t.integer :user_id
      t.boolean :show_image
      t.boolean :use_custom_url
      t.string :custom_image_url
    end
  end
end
