# frozen_string_literal: true

require_relative "test_helper"

class TestSlowPuts < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SlowPuts::VERSION
  end

  def test_puts_string
    assert_output("test\n") { slow_puts("test") }
  end

  def test_puts_integer
    assert_output("123\n") { slow_puts(123) }
  end
end
