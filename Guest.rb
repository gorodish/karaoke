class Guest

  attr_reader :name, :fave_song

  def initialize(name, fave_song)
    @name = name
    @fave_song = fave_song
    @guests_present = []
  end

  def add_guest(person)
    @guests_present << person
  end

  def number_of_guests
    return @guests_present.size()
  end


end