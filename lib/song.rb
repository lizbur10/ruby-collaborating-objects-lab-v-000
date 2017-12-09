require 'pry'
class Song
  attr_accessor :name, :artist, :song
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_name = file_name.split(" - ")[0]
    artist_name=(artist_name)
    song_name = file_name.split(" - ")[1]
    Song.new(song_name)
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name)

  end

end
