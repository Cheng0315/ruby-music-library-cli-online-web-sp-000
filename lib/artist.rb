class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end

  def self.create(name)
    artist = Artist.new(name)
    @@all << artist
    artist
  end

  def save
    @@all << self
  end

  def add_song(title, artist = self)
    song = Song.new(title, artist)
    @@all << song
    songs << song.name
    song
  end

  def self.destroy_all
    @@all.clear
  end
end
