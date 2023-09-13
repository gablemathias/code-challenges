class LocomotiveEngineer
  def self.generate_list_of_wagons(*list_of_wagons)
    list_of_wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    second_last, third_last, first_id, *wagons_id = each_wagons_id
    
    [first_id] + missing_wagons + wagons_id + [second_last] + [third_last]
  end

  def self.add_missing_stops(routing, **stops)
    # {from: routing[:from], to: routing[:to], stops: stops.values}
    # using merge
    routing.merge(stops: stops.values)
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(more_route_information)
  end
end


p LocomotiveEngineer.generate_list_of_wagons(1,2,3,4,5)

p LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])

p LocomotiveEngineer.add_missing_stops({from: "New York", to: "Miami"},
                    stop_1: "Washington, DC", stop_2: "Charlotte", stop_3: "Atlanta",
                    stop_4: "Jacksonville", stop_5: "Orlando")
p LocomotiveEngineer.extend_route_information({"from": "Berlin", "to": "Hamburg"}, {"length": "100", "speed": "50"})