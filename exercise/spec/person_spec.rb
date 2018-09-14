require 'person'

describe Person do
subject(:test_dummy) {described_class.new('Evil', 'Knievel', described_class::DRIVINGAGE)}
subject(:baby_driver) {described_class.new("Mini", "Me", described_class::DRIVINGAGE-15)}
      describe 'Legal driver' do
        it 'is driver legal' do
          expect(test_dummy).to be_legal_driver
        end

      it 'driver is underage' do
        expect(baby_driver).not_to be_legal_driver
      end
    end

    describe "Driver's name" do

    it 'returns drivers firt and last name' do
      expect(baby_driver.full_name).to eq ("Mini Me")
end
end
end
