require 'pry'
class Song
  attr_accessor :name, :artist, :new_song
  # attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    new_song_name = file_name.split(" - ")[1]
    new_artist_name = file_name.split(" - ")[0]
    @new_song = Song.new(new_song_name)
    artist_name=(new_artist_name)
    binding.pry
    @new_song
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(new_song)
    @new_song.artist = @artist
    @artist
  end

end
