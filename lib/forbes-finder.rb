require 'public_suffix'

class Forbes
  def self.lookup(query)
    return if query.nil? or query.index('.') < 1

    query = cleanse_query query
    data  = extract_data query
  end

  def self.ranked(url)
    File.exists?("lib/data/2012/#{url}")
  end

  def self.extract_data(url)
    f = File.open("lib/data/2012/#{url}")
    c = f.readlines
    data = Hash.new
    data[:rank] = c[1].to_i
    data[:name] = c[0].to_s.strip
    return data
  end

  def self.cleanse_query(query)
    query.downcase!
    query = query.sub(/^https?\:\/\//, '').sub(/^www./,'')
    query = query.split("/").first
    query = query.split("@").last

    domain = PublicSuffix.parse(query)
    query = "#{domain.sld}.#{domain.tld}"
    query
  end
end
