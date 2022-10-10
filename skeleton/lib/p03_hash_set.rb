class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    if !@store[key.hash % num_buckets].include?({key=>key.hash})
      @store[key.hash % num_buckets] << {key=>key.hash}
      @count += 1
    end

    self.resize! if @count == num_buckets

  end

  def include?(key)
    return true if @store[key.hash % num_buckets].include?({ key=>key.hash })
    false
  end

  def remove(key)
    unless !@store[key.hash % num_buckets].include?({key=>key.hash})
      @store[key.hash % num_buckets].delete({key=>key.hash})
      @count -= 1
    end
  end


  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    if @count == num_buckets
      @count.times do 
        @store << []
      end
    end
  end
end
