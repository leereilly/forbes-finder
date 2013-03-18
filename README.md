The Forbes Global 2000 is an annual ranking of the top 2000 public companies in the world by Forbes magazine. The ranking is based on a mix of four metrics: sales, profit, assets and market value.  Use this gem to look up Forbes 2000 companies based on a domain name or email address and generate reports / say things like...

> :bar_chart: Over **25%** of the **Forbes 2000** are using our product

> :chart_with_upwards_trend: We have customers in  **all** of the **Forbes 500** companies


# Installation

This is a Ruby gem, so you'll need a little Ruby-fu to get it working.

```
gem install forbes-finder
```

Or add this to your `Gemfile`:

```
gem 'forbes-finder', '~> 0.1.1'
```


# Usage

```ruby
record = ForbesFinder::lookup 'exxonmobil.com'
# => <ForbesFinder::Record:0x007faa33887310>

record.name
# => "Exxon Mobil"

record.rank
# => 1
```

It'll handle email addresses and URLs with all sorts of subdomains, parameters, etc.

```ruby
ForbesFinder::lookup('https://developer.apple.com/devcenter/ios/checklist/').rank
# => 22

ForbesFinder::lookup('www.chevron.com').rank
# => 12

ForbesFinder::lookup('william.gates@microsoft.com').rank
# 42

```

It'll also work with aliases or subsidiaries, but I'll need *your* help (see [contribution guidelines](/CONTRIBUTING.md) if you're interested).

```ruby
ForbesFinder::lookup('ebayinc.com').rank
# => 322
ForbesFinder::lookup('ebayinc.com').alias
# => false

ForbesFinder::lookup('ebay.com').rank
# => 322
ForbesFinder::lookup('ebay.com').alias
# => 322

ForbesFinder::lookup('paypal.com').rank
# => 322
ForbesFinder::lookup('paypal.com').alias
# => true
ForbesFinder::lookup('paypal.com').name
# => eBay
ForbesFinder::lookup('paypal.com').domain
# => ebayinc.com
```

# Limitations

* There may be cases when the company you're lookup up is a subsidiary of a Forbes 2000 company that has a different domain name e.g. eBay is a Forbes 2000 company identified primarily with `ebayinc.com`, but has many associated domains / subsidiaries like `ebay.com` and `paypal.com`. Using the power of Git, GitHub and TOML you can identify those relationships - please read the [contribution guidelines](/CONTRIBUTING.md) if you'd like to help.


**Data source(s):**
 * http://www.forbes.com/global2000/list/
