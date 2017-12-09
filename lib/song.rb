require 'pry'
class Song
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_song_name = file_name.split(" - ")[1]
    new_artist_name = file_name.split(" - ")[0]
    song = self.new(new_song_name)
    song.artist_name=(new_artist_name)
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    self.artist = artist
  end

end
