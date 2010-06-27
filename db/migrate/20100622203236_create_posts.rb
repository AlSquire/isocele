class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :post_thread_id
      t.string :subject
      t.text :comment
      t.string :author_name
      t.string :author_tripcode

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
