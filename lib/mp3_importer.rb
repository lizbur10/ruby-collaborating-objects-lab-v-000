class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    #load the files in the directory indicated by the path
    @files = Dir["#{@path}/*.mp3"]
    #normalizes the filename (removes the path)
    @files.map { | file | file.gsub("#{path}/", "") }
  end

  def import
    #calls Song.new_by_filename which creates the song from the filename
    self.files.each { | file_name | Song.new_by_filename(file_name)}
  end

end
