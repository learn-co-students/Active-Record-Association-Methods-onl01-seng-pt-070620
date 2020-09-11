class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.length
    # return the number of artists associated with the genre
  end

  def all_artist_names
    name_array = []
    self.artists.each do |artist| 
      name_array << artist.name
    end
    name_array
  end
end
