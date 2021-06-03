class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    total = {}
    @@genres.each do |genre|
      if total[genre] == nil
        total[genre] = 1
      else
        total[genre] += 1
      end
    end
    total
  end

  def self.artist_count
    total = {}
    @@artists.each do |artist|
      if total[artist] == nil
        total[artist] = 1
      else
        total[artist] += 1
      end
    end
    total
  end
end