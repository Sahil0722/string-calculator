class StringCalculator

  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter_section, numbers = numbers.split("\n", 2)
      delimiter = delimiter_section[2]
    end

    numbers = numbers.gsub("\n", delimiter)

    return numbers.split(delimiter).map(&:to_i).sum
  end

end
