require_relative 'convertor.rb'

class BodyMassIndex
  include Convertor

  def initialize(height, weight, units)
    @height = height
    @weight = weight
    @units = units
  end

  def calculate
    if @units.eql? "s"
      @bmi = toKilos(@weight) / (toMeters(@height) ** 2)
    else
      @bmi = @weight / (@height ** 2)
    end
  end

  def printScore
    if @bmi < 18.5
      puts "Your BMI is #{@bmi.round(2)} what is lower than 18.5 and suggests the person is underweight"
    elsif @bmi > 18.5 and @bmi < 25
      puts "Your BMI is #{@bmi.round(2)} what indicate optimal weight"
    elsif @bmi > 25 and @bmi < 30
      puts "Your BMI is #{@bmi.round(2)} what indicate the person is overweight"
    else
      puts "Your BMI is #{@bmi.round(2)} and suggests the person is obese"
    end
  end
end
