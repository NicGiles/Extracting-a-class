require 'control'

describe Control do
subject(:control) {described_class.new}
let(:top_speed) { 2000 }

before(:each) do
control.accelerate(10,10)
end

  describe "accelerate" do
    it "speeds up the car" do
      expect{control.accelerate(10, 4)}.to change {control.speed }.by(40)
    end

    it "prevents excessive speeds" do
    control.accelerate(100, 100)
    expect(control.speed <= top_speed).to eq true
  end
end

  describe "brake" do
    it "slows down the car" do
      control.accelerate(10,10)
      expect{control.brake(5, 8)}.to change {control.speed }.by(-40)
    end

    it "prevents negative speeds" do
      control.brake(100, 100)
      expect(control.speed.negative?).to eq false
    end
  end

end
