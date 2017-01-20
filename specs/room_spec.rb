require('minitest/autorun')
require_relative('../song.rb')
require_relative('../room.rb')

class TestRoom < Minitest::Test

  def setup
    @song1 = Song.new("Watching the river flow", "The Steve Gibbons Band")
    @song2 = Song.new("Cigarette Burns", "Flunk")
    @song3 = Song.new("Rose Rouge", "St Germain")
    @room = Room.new([@song1,@song2,@song3])
  end

  def test_initial_state
    assert_equal(3, @room.number_of_songs)
  end

  def test_add_song
    song4 = Song.new("title", "artist")
    @room.add_song(song4)
    assert_equal(4, @room.number_of_songs)
  end
end
