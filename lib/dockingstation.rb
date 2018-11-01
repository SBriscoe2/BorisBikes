require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail "No bikes docked" unless @bike
    @bike
  end


  def dock(bike)
    @bike = bike
  end

  def return_bike
    @bike
  end

end
