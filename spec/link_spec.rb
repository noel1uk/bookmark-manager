require 'link'

describe Link do 
  subject(:link) { described_class.new }
  context '#initialize' do 
    it "initializes with an empty array" do 
      expect(Link.all).to be_an_instance_of(Array)
    end
  end
end