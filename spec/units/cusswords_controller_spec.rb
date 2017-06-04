require 'cusswords_controller'
require 'cussword'

describe CusswordsController do
  subject(:swear){described_class.new}

  describe 'Router', type: :routing do
    it do
      should route(:get, '/').
      to(page: :home, controller: :cusswords, action: :index)
    end

    it do
      should route(:get, '/cusswords/show').
      to(controller: :cusswords, action: :show, id: :show)
    end
  end

  it "can receive messages from the show method" do
    expect(described_class.new).to respond_to(:show)
  end

  it "can receive messages from the words method" do
    expect(described_class.new).to respond_to(:words)
  end

end
