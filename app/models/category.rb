class Category < ApplicationRecord
    has_many :dramas, dependent: :destroy
end
