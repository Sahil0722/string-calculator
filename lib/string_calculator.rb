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

    negative_number = numbers.select { |num| num < 0 }
    unless negative_number.empty?
      raise "Negative numbers not allowed: #{negative_number.first}"
    end

    return numbers.sum
  end

end
