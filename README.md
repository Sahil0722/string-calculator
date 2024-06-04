# String Calculator

This String Calculator project is an exercise in Test-Driven Development (TDD), where functionality is incrementally developed based on tests cases. This ensures that each feature is thoroughly tested and implemented before moving on to the next one.

## Features

- Add numbers from a string
- Support different delimiters
- Handle new lines between numbers
- Raise exceptions for negative numbers

## Code Implementation

- The core functionality is encapsulated within the add method in the string_calculator.rb file.
- Test cases functionality are written in string_calculator_spec.rb file

## Setup and Testing

- Clone the Repository
  ```sh
  git clone <repository_url>

- Switch to directory
  ```sh
  cd string-calculator
- Install Dependencies
  ```sh
  bundle install
- Run Tests
  ```sh
  rspec spec/string_calculator_spec.rb
