class Room

attr_reader :number, :capacity

  def initialize(songs)
    @songs = songs
  end

  def number_of_songs
    @songs.size()
  end

  def add_song(song)
    @songs.push(song)
  end

end