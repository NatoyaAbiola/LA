require "simplecov"
SimpleCov.start
require "pry"
require_relative "spec_helper"

# YOUR TEST CODE HERE

describe "perimeter" do
  it "should multiple height by 4 if width is nil" do
    result = perimeter(4)
    expect(result).to eq(16)
  end
  it "should sum the height multiplied by 2 with width multiplied by 2" do
    result = perimeter(2,5)
    expect(result).to eq(14)
  end
end

describe "average" do
  it "calculates the sum of the elements in the list" do
    result = average([80,73,67,92,85])
     expect(result).to eq(79.4)
   end
end

describe "rankings" do
  it "displays the ranking of each student on a new line" do
    result = rankings(["Emma", "Wole", "Stacy", "Debra", "Jim"])
     expect(result).to eq("1. Emma/n 2. Wole/n 3. Stacy/n 4. Debra/n 5.Jim"))
  end
end

describe "greet" do
  it "takes a name and greets in spanish" do
    result = greet('Juan', 'spanish')
    expect(result).to eq(puts 'Hola Juan!')
  end
  it "takes a name and greets in italian" do
    result = greet("", "italian")
    expect(result).to eq(puts "Ciao Giovanni!")
  end
  it "takes a name and greets in french" do
    result = greet("Pierre", "french")
    expect(result).to eq(puts "Bonjour Etienne!")
  end
  it "takes a name and greets" do
    result = greet("Ramil")
    expect(result).to eq(puts "Hi Ramil!")
  end
end

describe "create_puzzle" do
  it "displays the ranking of each student on a new line" do
    result = rankings(["Emma", "Wole", "Stacy", "Debra", "Jim"])
     expect(result).to eq("1. Emma/n 2. Wole/n 3. Stacy/n 4. Debra/n 5.Jim"))
  end
end

describe "print_puzzle" do
  it "prints charactes for the letter guessed or underscore for not guessed in the word" do
    result = print_puzzle("natoya", ["n", "a", "t", "o", "y", "a"])
    expect(result).to eq("natoya")
  end
  it "prints charactes for the letter guessed or underscore for not guessed in the word" do
    result = print_puzzle("w", ["w"])
    expect(result).to eq("w")
  end
end

describe "divisible_by_three" do
  it "checks if number is divisible_by_three" do
    expect(divisible_by_three(9)).to eq(true)
  end
  it "checks if number is divisible_by_three" do
    expect(divisible_by_three(7)).to eq(false)
  end
end

describe "perfect_square?" do
  it "raises ArgumentError if number is less than 1" do
  expect{perfect_square?(-3)}.to raise_error(ArgumentError)
  end
  it "returns true if number is perfect_square" do
  expect(perfect_square?(4)).to eq(true)
  end
  it "returns false if number is not perfect_square" do
  expect(perfect_square?(5)).to eq(false)
  end
end
