require("minitest/autorun")
require("minitest/rg")
require_relative('../song.rb')
require_relative('../room.rb')

class TestRoom < Minitest::Test

  def setup
    @song1 = Song.new("Watching the river flow", "The Steve Gibbons Band")
    @song2 = Song.new("Cigarette Burns", "Flunk")
    @song3 = Song.new("Rose Rouge", "St Germain")

    # @guest1 = Guest.new("Dave Smith", "I actually hate all music")
    # @guest2 = Guest.new("Edmund Jones", "Rose Rouge")
    # @guest3 = Guest.new("Dave Jones", "Dock of the bay")

    @room1 = Room.new([@song1,@song2,@song3])
  end

  def test_initial_songs_present
    # room.number_of_songs.inspect()
    assert_equal(3, @room.number_of_songs)
  end

  # def test_add_song
  #   song4 = Song.new("Black Baby", "Kruder & Dorfmeister")
  #   @room.add_song(song4)
  #   assert_equal(4, @room.number_of_songs)
  # end

end
