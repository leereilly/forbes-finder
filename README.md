forbes-finder
=============

The Forbes Global 2000 is an annual ranking of the top 2000 public companies in the world by Forbes magazine. The ranking is based on a mix of four metrics: sales, profit, assets and market value.  Use this gem to ook up Forbes 2000 companies based on a domain name or email address.

# Installation

`gem install forbes-finder`

# Usage

```ruby
forbes_2000_record = ForbesFinder::lookup 'exxonmobil.com'
# => <ForbesFinder::Record:0x007faa33887310>

forbes_2000_record.name
# => "Exxon Mobil"

forbes_2000_record.rank
# => 1
```

It'll handle email addresses and URLs with all sorts of subdomains, parameters, etc.

```ruby
forbes_2000_record = ForbesFinder::lookup 'https://developer.apple.com/devcenter/ios/checklist/'
# => <ForbesFinder::Record:0x007faa338072a0>

forbes_2000_record.domain
# => "apple.com"

forbes_2000_record.name
# => "Apple"

forbes_2000_record.rank
# => 22

ForbesFinder::lookup('william.gates@microsoft.com').name
# => "Microsoft"
```

# Limitations

* There may be cases when the company you're lookup up is a subsidiary of a Forbes 2000 company that has a different domain name. Keeping track of all of those is beyong the scope of this gem, but you're welcome to submit it as an alias.

**Data source(s):**
 * http://www.forbes.com/global2000/list/
