class Song

  attr_accessor :name, :artist, :genres

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres >> genres
  end

  def self.count
    @@count
  end

  def genres(genre)
    genre.each do |genre|
      genre.uniq! { |s| s.first }
    end
  end
end
