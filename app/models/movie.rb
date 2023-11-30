class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

#should not be able to destroy self if has bookmarks children (FAILED - 2)
