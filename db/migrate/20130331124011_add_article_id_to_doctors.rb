class AddArticleIdToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :article_id, :integer
  end
end
