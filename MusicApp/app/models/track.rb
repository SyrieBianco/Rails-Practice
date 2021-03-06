class Track < ApplicationRecord
  validates :title, :ord, presence: true
  validates :ord, uniqueness: { scope: :album_id }
  validates :bonus_track, inclusion: { in: [true, false] }


  belongs_to :album
  has_one :band,
          through: :album,
          source: :band

end
