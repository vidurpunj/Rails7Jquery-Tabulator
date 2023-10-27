class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.integer :post_like
      t.integer :post_reposts

      t.timestamps
    end
  end
end
