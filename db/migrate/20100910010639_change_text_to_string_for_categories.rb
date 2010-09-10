class ChangeTextToStringForCategories < ActiveRecord::Migration
  def self.up
    change_column :categories, :name, :string
    change_column :categories, :shortcut, :string
  end

  def self.down
    change_column :categories, :name, :text
    change_column :categories, :shortcut, :text
  end
end
