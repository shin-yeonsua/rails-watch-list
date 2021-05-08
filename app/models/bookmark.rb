class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  belongs_to :list
  belongs_to :movie
  validates :movie, uniqueness: { scope: :list }
end
