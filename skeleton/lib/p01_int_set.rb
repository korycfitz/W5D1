require "byebug"
class MaxIntSet
  attr_accessor :store
  def initialize(max)
    @max = max
    @store = Array.new(max, false)
  end

  def insert(num)
    if num > @store.length || num < 0
      raise 'Out of bounds' 
    end
    @store[num] = true

  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num] == true
  end

  private

  def is_valid?(num)
    
  end

  def validate!(num)

  end
end


class IntSet
  attr_accessor :num_buckets
  def initialize(num_buckets = 20)
    @num_buckets = num_buckets
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    index = num % @store.length
    @store[index] << num
  end

  def remove(num)
    @store[num % @store.length].delete(num)

  end

  def include?(num)
    return true if @store[num % @store.length].include?(num)
    false
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
