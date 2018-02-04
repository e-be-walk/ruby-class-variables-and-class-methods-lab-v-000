class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_reader :name, :artist, :genres

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

  def self.genre_count()
    genre_hash = {}
    @@genres.each do |g|
      if genre_hash.include?(g)
        genre_hash[g] += 1
      else
        genre_hash[g] = 1
      end
    end
    genre_hash
  end

end
