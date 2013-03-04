module ForbesFinder

  class Error < StandardError
  end

  # Raised when no results are found for a particular domain e.g.
  #
  #   ForbesFinder::Record.new('github.com')
  #   # => ForbesFinder::EntryNotFound
  #
  class EntryNotFound < Error
  end
end