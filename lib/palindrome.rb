class String
  define_method(:is_palindrome?) do
    input_lowercase = self.downcase().delete(' ')
    reverse_string = input_lowercase.reverse()
    if reverse_string == input_lowercase
      true
    else
     false
    end
  end

 # without using reverse method 
  define_method(:is_palindrome_without_reverse?) do
    input_string = self.downcase().delete(' ')
    split_input_string = input_string.split("")
    reverse_array = []
    while split_input_string.length > 0 do
      letter = split_input_string.pop()
      reverse_array.push(letter)
    end
    reverse_string = reverse_array.join()
    if reverse_string == input_string
      true
    else
     false
    end
  end

  define_method(:palindrome) do
    result = self.is_palindrome_without_reverse?()
    result_statement = ""
    if result
      result_statement = "You have a palindrome!"
    else
      result_statement = "You don't have a palindrome ):"
    end
  end
end
