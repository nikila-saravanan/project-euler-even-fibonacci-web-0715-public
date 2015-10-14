# Implement your procedural solution here!
def find_fib_seq(num)
  sequence = [1,2]
  i = 0
  while (sequence[-1] + sequence[-2]) < num
    sequence << (sequence[-1] + sequence[-2])
  end
  sequence
end

def even_fibonacci_sum(num)
  seq = find_fib_seq(num)
  evens = seq.select {|x| x%2 == 0}
  sum = 0
  evens.inject {|sum,x| sum += x}
end
