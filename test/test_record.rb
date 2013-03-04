require 'helper'

class TestForbesFinderRecord < Test::Unit::TestCase
  should "create a record from a valid domain name" do
    record = ForbesFinder::Record.new('microsoft.com')
    assert_equal 'Microsoft', record.name
    assert_equal 42, record.rank
  end

  should "know about subsidiaries" do
    record = ForbesFinder::Record.new('citibank.com')
    assert_equal 'Citigroup', record.name
    assert_equal 14, record.rank
    assert_equal true, record.alias
  end
end
