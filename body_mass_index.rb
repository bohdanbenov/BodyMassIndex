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
end
