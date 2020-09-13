class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.all.size
  end

  def artist_count
    Artist.all.size
  end

  def all_artist_names
    all_names = []
    Artist.all.each { |art| all_names << art.name }
    all_names
  end
end
