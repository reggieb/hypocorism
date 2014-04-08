$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require "minitest/autorun"
require 'hypocorism'

class HypocorismTest < MiniTest::Unit::TestCase
  def test_foo
    #TODO: Write test
    flunk "TODO: Write test"
    # assert_equal("foo", bar)
  end
end
