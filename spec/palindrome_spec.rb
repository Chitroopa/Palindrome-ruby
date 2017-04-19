require('rspec')
require('palindrome')

describe('String#palindrome') do
  it ('returns false if string is not a palindrome') do
    expect(("not").is_palindrome?()).to(eq(false))
  end
  it ('returns true if string is palindrome') do
    expect(("madam").is_palindrome?()).to(eq(true))
  end
  it ('returns true if string is palindrome and also capitalized') do
    expect(("Madam").is_palindrome?()).to(eq(true))
  end
  it ('returns true if sentence is palindrome') do
    expect((" Nurses run ").is_palindrome?()).to(eq(true))
  end
  it ('returns sentence if your string is a palindrome or not') do
    expect((" Nurses run ").palindrome()).to(eq("You have a palindrome!"))
  end
end
