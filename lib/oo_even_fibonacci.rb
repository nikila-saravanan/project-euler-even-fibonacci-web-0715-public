# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(num)
    @num = num
  end

  def find_fib_seq(num)
    sequence = [1,2]
    i = 0
    while (sequence[-1] + sequence[-2]) < num
      sequence << (sequence[-1] + sequence[-2])
    end
    sequence
  end

  def find_even_fib(num)
    seq = find_fib_seq(num)
    even_seq = seq.select {|x| x%2 == 0}
  end

  def sum
    evens = find_even_fib(@num)
    sum = 0
    evens.inject {|sum, x| sum += x}
  end

end
