class BodyMassIndex
  def initialize(height, width, units)
    @height = height
    @width = width
    @units = units
  end

  def calculate
    if @units.equal?("s")
      @height_in_meters = toMeters(@height)
      @width_in_kilos = toKilos(@width)

      @bmi = @width_in_kilos / (@height_in_meters ** 2)
    else
      @bmi = @width / (@height ** 2)
    end
  end

  def printScore
    if @bmi < 18.5
      puts "Your BMI is #{@bmi} what is lower than 18.5 and suggests the person is underweight"
    elsif @bmi > 18.5 and @bmi < 25
      puts "Your BMI is #{@bmi} what indicate optimal weight"
    elsif @bmi > 25 and @bmi < 30
      puts "Your BMI is #{@bmi} what indicate the person is overweight"
    else
      puts "Your BMI is #{@bmi} and suggests the person is obese"
    end
  end
end
