require 'pry'
require 'artist.rb'
class Song
attr_accessor :name, :artist_name, :artist

  def initialize(name)
    @name = name
  end

  # def artist=(artist)
  #   @artist = artist
  # end

  def self.new_by_filename(filename)
    data = filename.split("-")
    artist_name = data[0].strip
    song_name = data[1].strip
    song = Song.new(song_name)
    current_artist = Artist.find_or_create_by_name(artist_name)
    song.artist = current_artist
    binding.pry
    current_artist.add_song(song)
    current_artist.save
    # artist.genre = data[2].sub(".mp3","").strip
  end

end
