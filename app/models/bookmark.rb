class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
end
