class AddRateToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :rate, :float
  end
end
