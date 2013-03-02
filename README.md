forbes-finder
=============

Look up Forbes 2000 companies based on a domain name or email address.

# Installation

`gem install forbes-finder`

# Usage

```ruby

Forbes::lookup 'exxonmobil.com'
# => {:rank => 1, :name => 'Exxon Mobil'}

Forbes::lookup 'www.weir.co.uk'
# => {:rank => 1749, :name => 'Weir Group'}

Forbes::lookup 'william.gates@microsoft.com'
# => {:rank => 42, :name => 'Microsoft'}

Forbes::lookup 'https://developer.apple.com/devcenter/ios/checklist/'
# => {:rank => 22, :name => 'Microsoft'}

Forbes::lookup 'UltraInfoMegaTechCorp.com'
# => nil

Forbes::lookup 'POTATO!'
# => nil
```

# Limitations

* There may be cases when the company you're lookup up is a subsidiary of a Forbes 2000 company that has a different domain name.

**Data source(s):**
 * http://www.forbes.com/global2000/list/
