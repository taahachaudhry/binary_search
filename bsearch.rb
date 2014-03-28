require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    # If the array is empty return a result
    # Otherwise call your helper _bsearch method
    if array.length==0
      false
    else
      _bsearch(array,element,0,array.size-1)
    end
  end

  def self._bsearch(array, element, start_index, end_index)
    # If the start and end indeces are the same, search
    # that element and return
    #
    # Otherwise, find the midpoint
    #   midpoint = start_index + (end_index - start_index) / 2
    #
    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array
    if array[start_index] == array[end_index] && array[start_index] != element
      false
    elsif array[start_index] == array[end_index] && array[start_index] == element
      true
    else
      midpoint = start_index + (end_index - start_index) / 2
      #binding.pry
      if element <= array[midpoint]
        end_index=end_index=midpoint
        _bsearch(array,element,start_index,end_index)
      else
        start_index=midpoint+1
        _bsearch(array,element,start_index,end_index)
      end
    end
  end
end
