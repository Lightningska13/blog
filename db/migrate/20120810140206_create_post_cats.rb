class CreatePostCats < ActiveRecord::Migration
  def change
    create_table :post_cats do |t|
      t.string :cat_name
      t.boolean :featured
      t.text :description
      t.string :catpic_file_name
      t.integer :catpic_file_size
      t.string :catpic_content_type

      t.timestamps
    end
  end
end
