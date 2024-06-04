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
  end
end