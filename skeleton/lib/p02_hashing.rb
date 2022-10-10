class Integer
  # Integer#hash already implemented for you
end

class Array
  def hi
    self.hash
    
  end
end

class String
  def hix
    self.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hi
  self.hash
  end
end
