class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.text :blurb
      t.integer :post_cat_id
      t.string :pic_file_name
      t.integer :pic_file_size
      t.string :pic_content_type
      t.string :pic2_file_name
      t.integer :pic2_file_size
      t.string :pic2_content_type
      t.string :pic3_file_name
      t.integer :pic3_file_size
      t.string :pic3_content_type
      t.string :pic4_file_name
      t.integer :pic4_file_size
      t.string :pic4_content_type

      t.timestamps
    end
  end
end
