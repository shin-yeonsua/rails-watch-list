class List < ApplicationRecord
  validates :name, length: { minimum: 1 }
  validates :name, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
