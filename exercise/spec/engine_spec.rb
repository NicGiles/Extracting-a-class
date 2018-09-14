require 'engine'


describe Engine do
 subject(:engine) { described_class.new }

describe '#start'
  it "Starts running the engine" do
expect(engine.start).to eq true
end

  describe '#stop'
    it "Stops running the engine" do
  expect(engine.stop).to eq false
end

describe "#running" do
  it "is running whilst engine is in use" do
engine.start
expect(engine).to be_running
end

it "is not running whilst off" do
expect(engine).not_to be_running
end
end
end
