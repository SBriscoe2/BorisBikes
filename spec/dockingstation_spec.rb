require 'dockingstation'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

describe DockingStation do
  it 'release_bike a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    expect(bike).to be_working
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1) }
end

describe DockingStation do
  it { is_expected.to respond_to :return_bike }
end

# describe DockingStation do
#   it "it docks bike" do
#     bike = Bike.new
#     subject.dock(bike)
#     expect(subject.bike).to eq bike
#   end
# end

describe DockingStation do
  it 'if there are no bikes' do
    expect { subject.release_bike }.to raise_error 'No bikes docked'
  end
end

describe DockingStation do
  it DockingStation::DEFAULT_CAPACITY.times do
    bike1 = Bike.new
    bike2 = Bike.new
    subject.dock(bike1)
    subject.dock(bike2)
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
 end
end

describe DockingStation do
  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end

# describe DockingStation do
#   it 'does not allow broken bikes to be released' do
#     bike = Bike.new
#     bike.report_broken
#     subject.dock(bike)
#     expect { subject.release_bike }.to raise_error 'Bike broken'
#   end
# end
