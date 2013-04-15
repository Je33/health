class RenameNewsToPost < ActiveRecord::Migration
  def up
    rename_table :news, :posts
  end

  def down
    rename_table :posts, :news
  end
end
