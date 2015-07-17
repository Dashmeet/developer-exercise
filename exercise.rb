class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    word = str.split(" ")
    for i in 0..(word.length-1)
      if (word[i].length > 4)
        if  [".", "?", "!"].include? word[i][word[i].length-1]
          punctuation = word[i][word[i].length-1]
        else
          punctuation = ""
        end
        if (word[i][0] == word[i][0].upcase)
          word[i] = "Marklar"
        else
          word[i] = "marklar"
        end
        word[i] += punctuation
      end
    end
    return word.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fibo = [1, 1, 2]
    for i in 3..(nth-1)
      fibo[i] = fibo[i-1] + fibo[i-2]
    end
    sumEven = 0
    for i in 0..(nth-1)
      if ((fibo[i] % 2) == 0)
        sumEven += fibo[i]
      end
    end
    sumEven
  end


end
