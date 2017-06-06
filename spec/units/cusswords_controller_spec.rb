describe CusswordsController, type: :controller  do

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

  it "can receive messages from the swears method" do
    expect(described_class.new).to respond_to(:swears)
  end

  describe "controller" do
    request_words = ["Crunchy", "Clown"]

    before :each do
      [{word: "Crunchy", rating: 99}, {word: "Clown", rating: 99}, {word: "Batman", rating: 00}, {word: "Robin", rating: 00}].each{|x| Cussword.create(x)}
      controller.params[:severity] = 99
      controller.show
    end

    it "returns specific rated swearwords from database via words method" do
      expect(controller.words.first.word).to eq("Crunchy")
    end

    it "returns specifically rated words from database" do
      response_words = controller.swears.map(&:word)
      expect(response_words.all?{|z| request_words.include?(z)}).to be(true)
    end

  end

end
