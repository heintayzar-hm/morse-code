require_relative "lib/MyEnum"
class MyList 
    include MyEnumerable
    def initialize(*list)
      @list = list
      @sorted_list = @list.sort
    end
  end