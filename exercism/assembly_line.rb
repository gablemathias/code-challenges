class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    cars_produced_per_hour = 221 * @speed.to_f

    case @speed
    when (1..4)
      cars_produced_per_hour
    when (5..8)
      cars_produced_per_hour * 0.90
    when 9
      cars_produced_per_hour * 0.80
    when 10
      cars_produced_per_hour * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
