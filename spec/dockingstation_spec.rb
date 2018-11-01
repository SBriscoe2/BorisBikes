require "dockingstation"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releases working bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    expect(bike).to be_working
  end
end

require "dockingstation"

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1) }
end

describe DockingStation do
    it { is_expected.to respond_to :return_bike}
end


describe DockingStation do
    it "it docks bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
