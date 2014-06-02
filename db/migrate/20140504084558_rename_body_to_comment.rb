class RenameBodyToComment < ActiveRecord::Migration
  def up
    change_column :comments, :body, :string
    rename_column :comments, :body, :content
  end
  def down
    change_column :comments, :body, :text
    rename_column :comments, :content, :body
  end
end
