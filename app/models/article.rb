class Article < ApplicationRecord
    has_one_attached :image

    def self.search(search)
        return Article.all unless search
        Article.where(['title LIKE ?', "%#{search}%"])
      end
end
