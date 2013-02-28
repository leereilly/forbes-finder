class Forbes
  def self.lookup(query)
    case query

    when 'exxonmobil.com'
      {:rank => 1, :name => 'Exxon Mobil', :employees => 82100}
    when 'www.weir.co.uk'
      {:rank => 1749, :name => 'Weir Group', :employees => 13000}
    when 'william.gates@microsoft.com'
      {:rank => 42, :name => 'Microsoft', :employees => 90000}
    when 'https://developer.apple.com/devcenter/ios/checklist/'
      {:rank => 22, :name => 'Microsoft', :employees => 60400}
    else
      nil
    end
  end
end