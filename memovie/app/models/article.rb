class Article < ApplicationRecord
    def self.search(search)
        if search
            Article.where(['title LIKE ?', "%#{search}%"])
        else 
            Article.all
        end
    end
end
