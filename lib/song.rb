require 'pry'
class Song
  attr_accessor :name, :artist, :song
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

end
