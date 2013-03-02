require 'helper'

class TestForbesFinder < Test::Unit::TestCase
  should "get a response for a domain name" do
    assert_equal Forbes::lookup('exxonmobil.com'), {:rank => 1, :name => 'Exxon Mobil'}
  end

  should "get a response for a fully qualified domain name" do
    assert_equal Forbes::lookup('www.weir.co.uk'), {:rank => 1749, :name => 'Weir Group'}
  end

  should "get a response for an email address" do
    assert_equal Forbes::lookup('william.gates@microsoft.com'), {:rank => 42, :name => 'Microsoft'}
  end

  should "get a response for a redonkulous with params and things" do
    assert_equal Forbes::lookup('https://developer.apple.com/devcenter/ios/checklist/'), {:rank => 22, :name => 'Apple'}
  end
end
