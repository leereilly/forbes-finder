require 'public_suffix'
require 'forbes-finder/record'
require 'toml'

module ForbesFinder
  class << self
    # Look up a domain name to see if it's the Forbes 2000 list.
    #
    # Returns a hash with the ranking and company name if one is found e.g.
    #   #=> {:rank => 1, :name => 'GitHub'}
    # returns nil if nothing is found.
    def lookup(query)
      return if query.nil? or query.index('.') < 1
      query = cleanse_query query
      records = ForbesFinder::Record.new(query)
    end

    # Verify if a domain name is ranked in the Forbes 2000.
    #
    # Returns true if a file is found matching the domain; false otherwise.
    # def ranked?(domain)
    #   File.exists?(File.expand_path("/../../data/2012/#{domain}.toml", __FILE__))
    # end

    # Clean the input query of things like 'http(s)://', 'www',
    # '?foo=bar', etc.
    #
    # Return the query string.
    def cleanse_query(query)
      query.downcase!
      query = query.sub(/^https?\:\/\//, '').sub(/^www./,'')
      query = query.split("/").first
      query = query.split("@").last

      domain = PublicSuffix.parse(query)
      query = "#{domain.sld}.#{domain.tld}"
      query
    end
  end
end