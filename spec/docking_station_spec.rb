require 'docking_station'

describe DockingStation do
    #it { is_expected.to respond_to :release_bike }
    it 'responds to release bike' do
        expect(subject).to respond_to :release_bike
    end
    it 'releases a bike that is working' do
        bike = subject.release_bike
        expect(bike).to be_working
    end
    it 'docks something' do
        bike = Bike.new
        # We want to return the bike we dock
        expect(subject.dock(bike)).to eq bike
    end
    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        # Again, we need to return the bike we just docked
        expect(subject.bike).to eq bike
      end
end