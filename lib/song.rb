require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file_name)

    artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    song = Song.new(file_name.split(" - ")[1])
    song.artist = artist
    artist.add_song(song)
    song
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end
