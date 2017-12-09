class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.detect { | artist | artist.name == name }
    # binding.pry
  end

  def self.create_by_name(name)
    new_song = self.new(name)
    new_song.save
    new_song
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end

  def print_songs
    @songs.each { | song | puts song.name }
  end
end
