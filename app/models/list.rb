class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  # has_many: reviews

  validates :name, presence: true, uniqueness: true
end

# A list has a name (e.g. "Drama", "Comedy", "Classic", "To rewatch")
# A list has many bookmarks
# A list has many movies through bookmarks
# When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
# A list must have a unique name.
