class FizzBuzz
  attr_accessor :number  

  def initialize(number)
    @number = number
  end

  def word
    if divisible?
      definitions[find]
    else 
      number
    end
  end

  def valid?
    number > 0
  end

  private

  def divisible?
    valid? && !definitions[find].nil?
  end

  def definitions
    {'3' => 'fizz', '5' => 'buzz', '15' => 'fizzbuzz'}
  end

  def find
    match = number
    %w{3 5 15}.each do |n|
      match = n if number % n.to_i == 0
    end
    match
  end
end
