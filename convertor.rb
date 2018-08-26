module Convertor
  def toMeters(height)
    parts = height.to_s.split(".")
    intPart = parts[0].to_f
    fltPart = parts[1].to_f

    intPart *= 30.48
    fltPart *= 2.54

    fullHeight = intPart + fltPart
    fullHeight
  end

  def toKilos(width)
    inKilos = width * 0.454
    inKilos
  end
end
