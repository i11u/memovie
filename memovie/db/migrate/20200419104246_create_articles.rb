class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :theater
      t.datetime :watched_date
      t.integer :rate

      t.timestamps
    end
  end
end
