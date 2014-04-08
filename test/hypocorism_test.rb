$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require "minitest/autorun"
require 'hypocorism'

class HypocorismTest < MiniTest::Unit::TestCase
  def test_match
    {
      'Robert' => true,
      'Bob' => true,
      'Bobby' => true,
      'Rob' => true,
      'Dave' => false,
      'Harry' => false,
      'Mary' => false
    }.each do |name, result|
      assert_equal result, Hypocorism.match('Robert', name), "#{name} should#{' not' unless result} match Robert"
    end
  end

  def test_variations_of
    name_data = Hypocorism.names.first
    assert_equal name_data, Hypocorism.variations_of(name_data.first)
  end
end
