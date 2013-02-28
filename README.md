forbes-finder
=============

Look up Forbes 2000 companies based on a domain name or email address.

# Installation

`gem install forbes-finder`

# Usage

```ruby

Forbes::lookup 'exxonmobil.com'
# => {:rank => 1, :name => 'Exxon Mobil', :employees => 82100}

Forbes::lookup 'www.weir.co.uk'
# => {:rank => 1749, :name => 'Weir Group', :employees => 13000}

Forbes::lookup 'william.gates@microsoft.com'
# => {:rank => 42, :name => 'Microsoft', :employees => 90000}

Forbes::lookup 'https://developer.apple.com/devcenter/ios/checklist/'
# => {:rank => 22, :name => 'Microsoft', :employees => 60400}

Forbes::lookup 'UltraInfoMegaTechCorp.com'
# => nil

Forbes::lookup 'POTATO!'
# => nil
```

**Data source(s):**
 * http://www.forbes.com/global2000/list/
