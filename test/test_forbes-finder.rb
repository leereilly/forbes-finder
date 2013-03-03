require 'helper'

class TestForbesFinder < Test::Unit::TestCase
  should "find a Forbes 2000 record" do
    record = ForbesFinder::lookup("chipotle.com")
    assert_equal "Chipotle Mexican Grill", record.name
    assert_equal 1876, record.rank
  end

  should "cleans queries" do
    assert_equal 'google.com', ForbesFinder::cleanse_query('GOOGLE.COM')
    assert_equal 'google.com', ForbesFinder::cleanse_query('http://google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_query('https://google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_query('www.google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_query('http://www.google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_query('https://subdomain.google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_query('larry@google.com')
  end
end
