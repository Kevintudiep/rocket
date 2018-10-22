require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_name_updates
    actual = @rocket.name = ("bob")
    expected = ("bob")

    assert_equal(expected, actual)
  end

  def test_colour_updates
    actual = @rocket.colour = ("red")
    expected = ("red")

    assert_equal(expected, actual)
  end

  def test_flying_return_false
    actual = @rocket.flying?
    expected = false

    assert_equal(expected, actual)
  end

  def test_flying_return_true
    @rocket = Rocket.new(flying: true)
    actual = @rocket.flying?
    expected = true

    assert_equal(expected, actual)
  end

  def test_lift_off_true
    actual = @rocket.lift_off
    expected = true

    assert_equal(expected, actual)
  end

  def test_lift_off_false
    @rocket = Rocket.new(flying: true)
    actual = @rocket.lift_off
    expected = false

    assert_equal(expected, actual)
  end

  def test_land_gives_false
    actual = @rocket.land
    expected = false

    assert_equal(expected, actual)
  end

  def test_land_gives_true
    @rocket = Rocket.new(flying: true)
    actual = @rocket.land
    expected = true

    assert_equal(expected, actual)
  end

  def test_status_gives_ready_to_lift_off
    actual = @rocket.status
    expected = false

    assert_equal(expected, actual)
  end
























end
