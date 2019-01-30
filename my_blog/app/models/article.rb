class Article < ApplicationRecord
    belongs_to :category
    has_many :commentaries
    has_many :likes
end
