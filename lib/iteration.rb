def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair

  pizza_love = []
  for i in 0...src.length
    pizza_love[i] = "I love #{src[i][0]} and #{src[i][1]} on my pizza"
  end

  return pizza_love
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays

  maxs = []
  row = []

  for i in 0...src.length
    row = src[i]
    maxs[i] = row.max
  end

  return maxs
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

  total = 0

  for i in 0...src.length
    row = src[i]
    if (row[0] % 2 == 0 && row[1] % 2 == 0)
      total = total + row[0] + row[1]
    end
  end

  return total
end
