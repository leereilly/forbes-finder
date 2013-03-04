require 'helper'

class TestForbesFinderRecord < Test::Unit::TestCase
  should "create a record from a valid domain name" do
    record = ForbesFinder::Record.new('microsoft.com')
    assert_equal 'Microsoft', record.name
    assert_equal 42, record.rank
  end

  should "throw an EntryNotFound error when the domain is not found" do
    assert_equal nil, ForbesFinder::Record.new('github.com').rank
  end
end
