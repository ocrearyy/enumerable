module MyEnumerable
    def all? 
      ans = false
      @list.each  do |item|
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
        newArr = []
        @list.select do |item|
            newArr.push(item) if yield(item)
        end
        newArr
    end

end