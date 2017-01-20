require('minitest/autorun')
require_relative('../guest.rb')
require_relative('../room.rb')

class TestRoom < Minitest::Test

  def setup
    @guest1 = Guest.new("Dave Smith", "I actually hate all music")
    @guest2 = Guest.new("Edmund Jones", "Rose Rouge")
    @guest3 = Guest.new("Dave Jones", "Dock of the bay")
    @guests = Guest.new([@guest1,@guest2,@guest3])
  end

  def test_initial_state
    assert_equal(3, @room.number_of_songs)
  end
end