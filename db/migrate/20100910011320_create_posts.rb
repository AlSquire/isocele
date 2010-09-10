class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references :post_thread
      t.string :subject
      t.text :content
      t.string :author_name
      t.string :author_tripcode

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
