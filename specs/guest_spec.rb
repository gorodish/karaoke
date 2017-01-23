require("minitest/autorun")
require("minitest/rg")
require_relative('../guest.rb')
require_relative('../room.rb')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Dave Smith", "I actually hate all music")
    @guest2 = Guest.new("Edmund Jones", "Rose Rouge")
    @guest3 = Guest.new("Dave Jones", "Dock of the bay")
    @room = Room.new(1, 4)
  end

  def test_initial_state
    # @room.add_guest
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    assert_equal(1, @guests_present)
    puts guests_present.inspect
  end
end