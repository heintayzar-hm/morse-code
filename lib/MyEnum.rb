module MyEnumerable # rubocop:todo Naming/FileName
  def check_list
    return unless @list.empty?

    puts 'Fill List Numbers'
    nil
  end

  def all?
    send(:check_list)
     @list.each do |item| # rubocop:todo Layout/IndentationConsistency
       return false unless yield item
     end
     true # rubocop:todo Layout/IndentationConsistency
  end

  def any?
       send(:check_list) # rubocop:todo Layout/IndentationWidth
       @list.each do |item|
         return true if yield item
       end
       false
  end

  def filter(&block)
       send(:check_list) # rubocop:todo Layout/IndentationWidth
       @list.select(&block)
  end

  def max
   @sorted_list.last # rubocop:todo Layout/IndentationWidth
  end

  def min
    @sorted_list.first
  end

  def quick_sort_implements(arr)
    return arr if arr.length <= 1

    # rubocop:todo Lint/MissingCopEnableDirective
    # rubocop:todo Layout/IndentationWidth
    # rubocop:enable Lint/MissingCopEnableDirective
    pivot = arr.delete_at(rand(arr.length))
    lesser = []
    greater = []
    arr.each do |num|
       num <= pivot ? lesser << num : greater << num # rubocop:todo Layout/IndentationWidth
    end
    quick_sort_implements(lesser) + [pivot] + quick_sort_implements(greater)
  end

  def quick_sort
    quick_sort_implements(@list)
  end
end
