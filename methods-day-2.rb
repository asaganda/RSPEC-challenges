def repeat(str, n)
  #takes a string and an integer and returns
  # the string repeated n times, seperated by a space

  # assigning an empty array to result
  result = []
  # takes a string and shovels itself into the result array
  # and then duplicates itself n(we give it the number) times
  n.times { result << str }
  # then we join the strings together seperated by a space via .join enumerator
  result.join(' ')
end

def interleave(array1, array2)
  #like interpose, but the array should not be nested
  #For example: given arrays [1, 2, 3] and [:a, :b, :c]
  #return [1, :a, 2, :b, 3, :c]

  # interpose method does the method created in methods.rb file but we also need the array to be flat
  # .flatten enumerator make the array 1 dimensional meaning its just one long array instead of nested
  interpose(array1, array2).flatten
end

def hide_in_shuffle(letter)
  #takes a letter and retuns a shuffled array containing that letter
  #Your test should confirm that the returned array contains the original
  #letter

  # what does this do?
  arr = [rand(10), rand(10), rand(10), letter]
  arr.shuffle
end

def shuffler(array, n)
  #takes an array and shuffles it n times
  #Your test should confirm that the array
  #is shuffled the correct number of times
  #
  #Hint -- you aren't testing the return value of this method!

  # the array is being shuffled n number of times
  n.times{ array.shuffle }
end
