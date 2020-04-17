class AddTheaterToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :theater, :string
  end
end
