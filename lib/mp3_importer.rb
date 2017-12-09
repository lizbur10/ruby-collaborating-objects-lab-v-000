class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files(path)
    #load the files in the directory indicated by the path
    #normalizes the filename (removes the path)
  end

  def import(file_name)
    #calls Song.new_by_filename which creates the song from the filename
    Song.new_by_filename(file_name)
  end

end


artist = Artist.new('Michael Jackson')
song_one = Song.new("Rock With You")
song_two = Song.new("Smooth Criminal")
artist_1 = Artist.find_or_create_by_name("Michael Jackson")
artist_2 = Artist.find_or_create_by_name("Michael Jackson")
artist_1 = Artist.find_or_create_by_name("Drake")
dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
artist.add_song(dirty_diana)
artist.add_song(billie_jean)
song = Song.new('Man in the Mirror')
file_name = 'Michael Jackson - Black or White - pop.mp3'
song.name = 'Thriller'
new_instance = Song.new_by_filename(file_name)
