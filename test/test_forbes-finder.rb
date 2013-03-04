require 'helper'

class TestForbesFinder < Test::Unit::TestCase
  should "create a record from a valid domain name" do
    record = ForbesFinder::lookup('microsoft.com')
    assert_equal 'Microsoft', record.name
    assert_equal 42, record.rank
  end

  should "know about subsidiaries" do
    record = ForbesFinder::lookup('citibank.com')
    assert_equal 'Citigroup', record.name
    assert_equal 14, record.rank
    assert_equal true, record.alias
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

  should "know when domains are ranked" do
    assert_equal true, ForbesFinder::ranked?('microsoft.com')
  end

  should "know when domains are unranked" do
    assert_equal false, ForbesFinder::ranked?('github.com')
  end

  should "not crap out" do
    assert_equal nil, ForbesFinder::lookup(nil)
    assert_equal nil, ForbesFinder::lookup('zomg.com')
  end
end
