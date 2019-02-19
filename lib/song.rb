require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@hash = {}
  @@hash2 = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.each do |i|
      if @@hash.key?(i)
        @@hash.each {|k, v| @@hash[k] = v + 1 if i == k}
      else
        @@hash[i] = 1
      end
      #binding.pry
    end
    @@hash
  end
  
  def self.artist_count
    @@artists.each do |i|
      if @@hash2.key?(i)
        @@hash2.each {|k, v| @@hash2[k] = v + 1 if i == k}
      else
        @@hash2[i] = 1
      end
    end
    @@hash2
  end
end