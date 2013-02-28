require 'public_suffix'

class Forbes
  def self.lookup(query)
    return if query.nil? or query.index('.') < 1

    query.downcase!
    query = query.sub(/^https?\:\/\//, '').sub(/^www./,'')
    query = query.split("/").first
    query = query.split("@").last

    domain = PublicSuffix.parse(query)
    query = "#{domain.sld}.#{domain.tld}"

    case query

    when 'exxonmobil.com'
      {:rank => 1, :name => 'Exxon Mobil', :employees => 82100}
    when 'weir.co.uk'
      {:rank => 1749, :name => 'Weir Group', :employees => 13000}
    when 'microsoft.com'
      {:rank => 42, :name => 'Microsoft', :employees => 90000}
    when 'apple.com'
      {:rank => 22, :name => 'Apple', :employees => 60400}
    else
      nil
    end
  end
end

def clean_uri(uri)

end