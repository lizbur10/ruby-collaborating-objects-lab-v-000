class Artist
  attr_accessor :name, :song, :songs
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
    self.new(name)
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each { | song | puts song.name }
  end
end
