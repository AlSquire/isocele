class CreatePostThreads < ActiveRecord::Migration
  def self.up
    create_table :post_threads do |t|
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :post_threads
  end
end
