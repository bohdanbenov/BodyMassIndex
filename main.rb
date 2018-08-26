require_relative 'body_mass_index.rb'

print 'Enter units of units of measurement (m - metric, s - standard): '
units = gets.chomp.to_s

print 'Enter your height: '
height = gets.chomp.to_f

print 'Enter your weight: '
weight = gets.chomp.to_f

bmi = BodyMassIndex.new(height, weight, units)
bmi.calculate
bmi.printScore