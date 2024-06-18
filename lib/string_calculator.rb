require_relative 'negative_number_error'

class StringCalculator

  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter_section, numbers = numbers.split("\n", 2)
      delimiter = delimiter_section[2]
    end

    numbers = numbers.gsub("\n", delimiter)
    numbers = numbers.split(delimiter).map(&:to_i)

    negative_numbers = numbers.select { |num| num < 0 }
    unless negative_numbers.empty?
      raise NegativeNumberError.new(negative_numbers)
    end

    return numbers.sum
  end

end
