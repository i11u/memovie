class AddDateToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :watched_date, :datetime
  end
end
