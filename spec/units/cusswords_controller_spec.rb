describe CusswordsController do

    it "can receive messages from show method" do
      expect(described_class.new).to respond_to(:show)
    end

end
