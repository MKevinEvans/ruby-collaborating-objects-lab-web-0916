class Artist
  attr_accessor :name

  @@all =[]


  def self.all
    @@all
  end

  def songs
    @all_songs
  end

  def save
    @@all << self
  end

  def initialize(name)
    self.name = name
    @all_songs = []
    self.save
  end

  def self.find_or_create_by_name(artist_name)
    artist =  @@all.each {|artist| return artist if artist.name.include?(artist_name)}
    if artist != nil
      artist_name = Artist.new(artist_name)
    end
  end

  def add_song(song_name)
    @all_songs << song_name
  end

  def print_songs
    @all_songs.each {|song| puts "#{song.name}"}
  end
end
