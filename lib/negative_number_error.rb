class NegativeNumberError < ArgumentError
  def initialize(negative_numbers)
    super("Negative numbers not allowed: #{negative_numbers.join(', ')}")
  end
end