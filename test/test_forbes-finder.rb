require 'helper'

class TestForbesFinder < Test::Unit::TestCase
  should "find a Forbes 2000 record" do
    record = ForbesFinder::lookup("chipotle.com")
    assert_equal "Chipotle Mexican Grill", record.name
    assert_equal 1876, record.rank
  end

  should "cleans queries" do
    assert_equal 'google.com', ForbesFinder::cleanse_domain('GOOGLE.COM')
    assert_equal 'google.com', ForbesFinder::cleanse_domain('http://google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_domain('https://google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_domain('www.google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_domain('http://www.google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_domain('https://subdomain.google.com')
    assert_equal 'google.com', ForbesFinder::cleanse_domain('larry@google.com')
  end

  should "know a Forbes" do
    assert_equal false, ForbesFinder::ranked?('github.com')
    assert_equal true, ForbesFinder::ranked?('microsoft.com')
  end
end
