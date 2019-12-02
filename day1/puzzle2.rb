#!/usr/bin/env ruby

def fuel_required(mass)
  amount = (mass / 3) - 2
  if amount <= 0
    return 0
  end

  amount + fuel_required(amount)
end

def sum_of_fuel_in_input
  sum = 0
  File.open('./input1.txt').each_line do |line|
    sum += fuel_required(line.to_i)
  end

  sum
end

puts sum_of_fuel_in_input

