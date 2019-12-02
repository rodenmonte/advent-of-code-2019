#!/usr/bin/env ruby

def fuel_required(module_mass)
  (module_mass / 3) - 2
end

def sum_of_fuel_in_input
  sum = 0
  File.open('./input1.txt').each_line do |line|
    sum += fuel_required(line.to_i)
  end

  sum
end

puts sum_of_fuel_in_input

