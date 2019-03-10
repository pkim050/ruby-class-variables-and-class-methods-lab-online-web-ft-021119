require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@hash = {}
<<<<<<< HEAD
  @@hash2 = {}
=======
>>>>>>> 763e3fe8b440a29018823e0f6cf5c1b636977961
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
<<<<<<< HEAD
=======
    if @@hash.key?(genre) == false
      @@hash[genre] = 1
    else
      @@hash.each do |k, v|
        @@hash[k] = v + 1 if k == genre
        binding.pry
      end
    end
>>>>>>> 763e3fe8b440a29018823e0f6cf5c1b636977961
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
<<<<<<< HEAD
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
=======
    @@hash
  end
    
>>>>>>> 763e3fe8b440a29018823e0f6cf5c1b636977961
end