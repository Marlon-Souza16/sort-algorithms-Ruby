require_relative '../sorting_strategy'

class BubbleSortEnhanced
  include SortingStrategy

  def sort(array)
    n = array.length
    (n-1).times do |i|
      swapped = false
      (0...(n-1-i)).each do |j|
        if array[j] > array[j + 1]
          array[j], array[j + 1] = array[j + 1], array[j]
          swapped = true
        end
      end

      break unless swapped
    end
    array
  end
end