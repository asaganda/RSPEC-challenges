
def sum_array(array)
  #find the sum of the items in the array
  #it's possible that nil items could be
  #members of the array
  
  # .reject is rejecting the nils in the array
  # .reduce is adding up the values in the array except for the nils because they're rejected 
  array.reject(&:nil?).reduce(:+)
end

def titleize(string)
  #capitalizes the first letter of every word in a string
  #except an, a, of, the.  Unless that word is the first word
  #of the string

  # exceptions
  non_capitals = ['a', 'of', 'the', 'an']

  # splits the string and downcases each word
  string.split(' ').map.with_index do |word, i|
    word.downcase!
    if i == 0
      word[0] = word[0].upcase
    else
      if !non_capitals.include?(word)
        word[0] = word[0].upcase
      end
    end
    # returns each word individually
    word
  # joins each word back to be a full string
  end.join(' ')
end

def interpose(array1, array2)
  #returns a nested array, where each nested array is the corresponding
  #two elements of the two given arrays
  #For example: given arrays [1, 2, 3] and [:a, :b, :c]
  #return [[1, :a], [2, :b], [3, :c]]

  # alternate longer way of writing the method
  # length = array1.length - 1

  # (0..length).map do |i|
  #   [array1[i], array2[i]]
  # end

  # shorter enumerator way of writing the method
  array1.zip(array2)
end
