class Song

  attr_accessor :name, :artist, :genres

  @@count = 0
  @@genres = []

  def initialize
    @@count += 1
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
