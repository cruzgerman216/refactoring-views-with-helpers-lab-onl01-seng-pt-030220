class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    return artist.name
  end

  def artist_name=(name)
    #
    artist = Artist.find_by(:name => name)
    self.artist = artist
    # self.artist.name = name

  end
end
