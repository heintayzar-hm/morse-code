require_relative 'lib/MyEnum' # rubocop:todo Naming/FileName
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
    @sorted_list = @list.sort
  end
end
