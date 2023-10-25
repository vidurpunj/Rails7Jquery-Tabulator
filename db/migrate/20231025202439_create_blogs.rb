class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.text :body
      t.integer :blog_likes_count
      t.integer :blog_reposts_count

      t.timestamps
    end
  end
end
