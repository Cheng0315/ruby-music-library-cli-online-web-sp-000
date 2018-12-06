class Genre
  attr_accessor :name, :songs, :artists
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artist = []
  end

  def self.all
    @@all
  end

  def self.create(genre)
    genre = Genre.new(genre)
    @@all << genre
    genre
  end

  def save
    @@all << self
  end

  def add_song(title)
    song = Song.new(title)
    @@all << song
    song.save
    artists << artist
    song
  end

  def self.destroy_all
    @@all.clear
  end
end
