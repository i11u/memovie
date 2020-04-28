class Article < ApplicationRecord
    def self.search(search)
        if search
            Article.where(['title LIKE ? OR theater LIKE ? OR watched_date LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
        else 
            Article.all
        end
    end
end
