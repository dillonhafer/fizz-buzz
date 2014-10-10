class FizzBuzz
  DEFINITIONS = {'3' => 'fizz', '5' => 'buzz'}
  attr_accessor :number  

  def initialize(number)
    @number = number
  end

  def valid?
    number > 0
  end
  
  def to_s
    convert if valid?
  end

  private
    
  def calculate
    match = ""
    %w{3 5}.each do |n|
      match << DEFINITIONS[n] if number % n.to_i == 0
    end
    match
  end

  def convert
    result = calculate
    if result.empty?
      number
    else
      result
    end
  end
end
