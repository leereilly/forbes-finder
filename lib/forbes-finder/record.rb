module ForbesFinder
  class Record
    attr_accessor :domain
    attr_accessor :name
    attr_accessor :rank

    def initialize(domain)
      toml_record = TOML.load_file(File.expand_path(__FILE__+"/../../data/2012/#{domain}.toml"))
      @name           = toml_record["name"]
      @rank           = toml_record["rank"]
      @domain         = domain
    end

    # Verify if a domain name is ranked in the Forbes 2000.
    #
    # Returns true if a file is found matching the domain; false otherwise.
    def ranked?(domain)
      File.exists?(File.expand_path("/../../data/2012/#{domain}.toml", __FILE__))
    end
  end
end