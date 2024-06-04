require 'rspec'
require 'string_calculator.rb'

RSpec.describe StringCalculator do
  describe ".add" do
    context "when input is empty" do
      it "returns 0" do
        input = ""
        result = StringCalculator.add(input)

        expect(result).to eq(0)
      end
    end

    context "when input is single digit" do
      it "returns single digit" do
        input = "1"
        result = StringCalculator.add(input)

        expect(result).to eq(1)
      end
    end

    context "when input is two numbers" do
      it "returns addition of two numbers" do
        input = "1,2"
        result = StringCalculator.add(input)

        expect(result).to eq(3)
      end
    end

    context "when input is multiple numbers" do
      it "returns addition of multiple numbers" do
        input = "1,2,3,4"
        result = StringCalculator.add(input)

        expect(result).to eq(10)
      end
    end

    context "when input contains new line delimeter" do
      it "returns addition of numbers" do
        input = "1,2\n4"
        result = StringCalculator.add(input)

        expect(result).to eq(7)
      end
    end
  end
end
