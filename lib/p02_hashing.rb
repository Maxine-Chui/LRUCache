class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    self.to_s.chars.reduce(0) {|acc, i| acc.hash + i.ord.hash}.hash
  end
end

class String
  def hash
    self.chars.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    self.to_a.sort_by(&:hash).hash
    # 0
  end
end
