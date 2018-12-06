class Song
  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create(name, artist = nil)
    song = Song.create(name, artist)
    @@all << song
    song
  end

  def self.destroy_all
    @@all.clear
  end
end
