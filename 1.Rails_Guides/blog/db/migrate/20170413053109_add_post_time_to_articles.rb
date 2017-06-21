class AddPostTimeToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :post_time, :string
  end
end
