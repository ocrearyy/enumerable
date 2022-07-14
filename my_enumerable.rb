module MyEnumerable
  def all?
    ans = false
    @list.each do |item|
      ans = true if yield(item)
      return false unless yield(item)
    end
    ans
  end

  def any?
    @list.each do |item|
      return true if yield(item)
    end
    false
  end

  def filter
    new_arr = []
    @list.select do |item|
      new_arr.push(item) if yield(item)
    end
    new_arr
  end
end
