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
  define_method(:palindrome) do
    result = self.is_palindrome?()
    result_statement = ""
    if result
      result_statement = "You have a palindrome!"
    else
      result_statement = "You don't have a palindrome ):"
    end
  end
end
