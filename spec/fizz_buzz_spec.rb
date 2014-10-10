require 'rspec'
require 'fizz_buzz'

describe FizzBuzz, "#valid?" do
  it 'fails for numbers less than 1' do
    fizz_buzz = FizzBuzz.new(0)
    expect(fizz_buzz.valid?).to eq(false)
  end

  it 'succeeds for numbers greater than 0' do
    fizz_buzz = FizzBuzz.new(1)
    expect(fizz_buzz.valid?).to eq(true)
  end
end

describe FizzBuzz, "#to_s" do
  it "returns 1 if 1 not divisible by 3, 5, or 15" do
    fizz_buzz = FizzBuzz.new(1)
    expect(fizz_buzz.to_s).to eq(1)
  end

  it "returns 2 if 2 not divisible by 3, 5, or 15" do
    fizz_buzz = FizzBuzz.new(2)
    expect(fizz_buzz.to_s).to eq(2)
  end
  
  it "returns 'fizz' if the number is divisible by 3" do
    fizz_buzz = FizzBuzz.new(3)
    expect(fizz_buzz.to_s).to eq('fizz')
  end

  it "returns 4 if 4 is not divisible by 3, 5, or 15" do
    fizz_buzz = FizzBuzz.new(4)
    expect(fizz_buzz.to_s).to eq(4)
  end
  
  it "returns 'buzz' if the number is divisible by 5" do    
    fizz_buzz = FizzBuzz.new(5)
    expect(fizz_buzz.to_s).to eq('buzz')
  end

  it "returns 'fixx' if the number is divisible by 3" do
    fizz_buzz = FizzBuzz.new(6)
    expect(fizz_buzz.to_s).to eq('fizz')
  end

  it "returns 'buzz' if the number is divisible by 5" do    
    fizz_buzz = FizzBuzz.new(10)
    expect(fizz_buzz.to_s).to eq('buzz')
  end

  it "returns 'fizzbuzz' if the number is divisible by 15" do
    fizz_buzz = FizzBuzz.new(15)
    expect(fizz_buzz.to_s).to eq('fizzbuzz')
  end  
end
