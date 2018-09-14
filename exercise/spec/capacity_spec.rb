require 'capacity'

describe Capacity do
  subject(:shotgun) {described_class.new}
  let(:passenger) { double('person') }


  describe 'add person' do

    it 'adds a passenger to car' do
      expect(shotgun.add_person(passenger)).to eq [passenger]
    end
  end

  it 'rejects person when full' do
    4.times{shotgun.add_person("yoda")}
    expect{shotgun.add_person("C3PO")}.to raise_error("Car's full mate. Do one")
  end
end
