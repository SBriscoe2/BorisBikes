require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'Allows a user to report a bike as broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
