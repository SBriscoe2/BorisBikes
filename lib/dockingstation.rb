require_relative 'bike'

class DockingStation

  attr_accessor :bike

  DEFAULT_CAPACITY = 2

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes docked" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bikes << bike
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

  def return_bike
    @bike
  end

end
