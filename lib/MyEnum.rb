module MyEnumerable
    def check_list
      if @list.empty?
        puts "Fill List Numbers"
        return
      end
    end
   def all?
     send(:check_list)
      @list.each do |item|
        return false unless yield item
      end
      true
    end
  
    def any?
         send(:check_list)
       @list.each do |item|
        return true if yield item
      end
      false
    end
  
    def filter
         send(:check_list)
       @list.select{|item| yield item}
    end
  
    def max
     @sorted_list.last
    end
  
    def min
      @sorted_list.first
    end
   def quick_sort_implements(arr)
       return arr if arr.length <= 1
       pivot = arr.delete_at(rand(arr.length))
       lesser = []
       greater = []
       arr.each do |num|
          num <= pivot ? lesser << num : greater << num
       end
       quick_sort_implements(lesser) + [pivot] + quick_sort_implements(greater)
     end
    def quick_sort
      quick_sort_implements(@list)
    end
  end