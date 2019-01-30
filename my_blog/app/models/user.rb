class User < ApplicationRecord
    has_many :commentaries
    has_many :likes
end
