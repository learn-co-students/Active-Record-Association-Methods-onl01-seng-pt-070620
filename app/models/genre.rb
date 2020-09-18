class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name

    # solution 1 - did not work
    # self.all.artists.name

    # solution 2 - did not work
    # self.artists.each do |artist|
    #   name = artist.where("artist.name = ?", name)
    # end 
    # name

    # solution 3 - did not work
    # self.artists.find_by("name")

    self.artists.collect {|artist| artist.name}
  end

end
