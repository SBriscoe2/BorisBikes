require "dockingstation"
describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it "gets bike" do
    station = DockingStation.new
    expect(station.release_bike).not_to eq nil
  end
  it "is it working?" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq true
  end

  it "return bike" do
    station = DockingStation.new
    expect(station.return_bike).to eq nil
  end

  describe 'dock_bike' do
    it " stores a bike argument as an attribute of a Docking station instance" do
      bike = Bike.new
      expect{subject.dock_bike(bike)}.to eq bike
    end
  end
  end
end
