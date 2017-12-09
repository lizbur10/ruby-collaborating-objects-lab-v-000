require 'pry'
class Song
  attr_accessor :name, :artist, :song
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    artist_name = file_name.split(" - ")
  end

  def artist_name=(name)

  end

end
