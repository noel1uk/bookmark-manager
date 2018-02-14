require 'link'

describe Link do
  subject(:link) { described_class.new }
  context '#initialize' do
    it "initializes with an empty array" do
      expect(Link.all).to be_an_instance_of(Array)
    end
  end
  describe '.add' do
    it "adds a new link" do
      Link.add('www.mywebsite')
      expect(Link.all).to include 'www.mywebsite'
    end
  end
end

describe '.create'
