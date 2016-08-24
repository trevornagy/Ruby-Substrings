def substrings(string, dictionary)
  # Make a blank hash, set it to 0 so we can += later
  string_occurrence = Hash.new(0)

  # make into array, downcases as the specs say it is case insensitive
  string_array = (string.downcase).split(' ')

  # for each word in the dictionary
  dictionary.each do |words_in_dictionary|
    # for each word in the string array
    string_array.each do |word|
      # if the word in the string array is included in the dictionary
      if word.include?(words_in_dictionary)
        # Add one to the hash value of the iterator
        string_occurrence[words_in_dictionary] += 1
      end
    end
  end
  string_occurrence
end

dictionary = %w(below down go going horn how howdy it i low own part partner sit)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
