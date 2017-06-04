require 'cusswords_controller'
require 'cussword'

describe CusswordsController do
  subject(:swear){described_class.new}

  describe 'Router', type: :routing do
    it do
      should route(:get, '/').
      to(page: :home, controller: :cusswords, action: :index)
    end
  end

  it "can receive messages from the show method" do
    expect(described_class.new).to respond_to(:show)
  end

end
