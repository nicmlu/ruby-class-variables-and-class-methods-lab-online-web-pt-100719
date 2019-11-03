require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre) 
    @name = name
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@artists.push(artist) 
    @@genres.push(genre) 
  end

  def self.count
    @@count
  end
  
  def self.genres
    unique_genres = []
    
    @@genres.map do |genre|
      unique_genres.push(genre) unless unique_genres.include?(genre)
    end
    unique_genres
  end
  
  def self.artists
    unique_artists = []
    
    @@artists.map do |artist| 
      unique_artists.push(artist) unless unique_artists.include?(artist)
    end
    unique_artists
  end
  
  def self.genre_count
    genre_count = {}
    
    @@genres.each do |genre|
      if genre_count.include?(genre) 
        genre_count[genre] += 1
      else genre_count[genre] = 1
      end
    end
    genre_count
  end
  
   def self.artist_count
    artist_count = {}
    
    @@artists.each do |artist|
      if artist_count.include?(artist) 
        artist_count[artist] += 1
      else artist_count[artist] = 1
      end
    end
    artist_count
  end
  
end