class MP3Importer
  attr_accessor :path, :song_array, :name

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.entries(self.path).select {|item| item.include?("mp3")}
  end

  def import
    files.each {|file_name| Song.new_by_filename(file_name)}
  end
end
