#!/usr/bin/env ruby
def mergeSort(array)
  # base case for recursion
  return array if array.count <= 1

  mid = array.count / 2
  left = mergeSort array.slice(0, mid)
  right = mergeSort array.slice(mid, array.count - mid)

  newArray = []
  leftIndex = 0
  rightIndex = 0
  return left.concat(right) if left.last < right.first

  while leftIndex < left.length && rightIndex < right.length
    if left[leftIndex] < right[rightIndex]
      newArray << left[leftIndex]
      leftIndex += 1
    else
      newArray << right[rightIndex]
      rightIndex += 1
    end
  end

  while leftIndex < left.count
    newArray << left[leftIndex]
    leftIndex += 1
  end

  while rightIndex < right.count
    newArray << right[rightIndex]
    rightIndex += 1
  end
  newArray
end

unsortArray = [12, 35, 87, 26, 9, 28, 7]
puts unsortArray
sortedArray = mergeSort(unsortArray)
puts sortedArray



