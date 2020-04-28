class Article < ApplicationRecord
    validates :title, presence: true

    def self.search(search)
        if search
            Article.where(['title LIKE ? OR theater LIKE ? OR watched_date LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
        else 
            Article.all
        end
    end
end
