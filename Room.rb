class Room

attr_reader :number, :capacity

  def initialize(number, capacity)
    @songs = []
    @number = number
    @capacity = capacity
    @guests_present = []
  end

  def number_of_songs
    return number_of_songs.()
  end

  def guest_count()
    return @guests_present.length()
  end

  def add_guest(person)
    @guests_present << person
  end

  def add_song(song)
    @songs.push(song)
  end

  def guests_present
    @guests.size()
  end
end