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

  def self.genres()
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre 
      end
    end
    unique_genres
  end

end
