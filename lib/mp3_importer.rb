class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    #load the files in the directory indicated by the path
    Dir["#{@path}/*.mp3"]
    #normalizes the filename (removes the path)
  end

  def import
    #calls Song.new_by_filename which creates the song from the filename
    Song.new_by_filename(file_name)
  end

end
