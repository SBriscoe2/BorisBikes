require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_reader :capacity

  DEFAULT_CAPACITY = 2

  def initialize(capacity =DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []

  end

  def release_bike
    fail 'No bikes docked' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end

  def return_bike
    @bike
  end

end
