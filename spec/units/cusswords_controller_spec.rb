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

  describe "controller" do
    request_words = ["Crunchy", "Clown"]
    severity_rating = 99
    bat_rating = 22

    before :each do
      [{word: "Crunchy", rating: severity_rating},
        {word: "Clown", rating: severity_rating},
         {word: "Batman", rating: bat_rating},
          {word: "Robin", rating: bat_rating}].each{|x| Cussword.create(x)}
      controller.params[:severity] = severity_rating
      controller.show
    end

    it "returns specific rated words from database via words method" do
      rating_arr = controller.words.map(&:rating)
      expect(rating_arr.all?{|n| n == severity_rating}).to be(true)
    end

    it "returns specific number of words from words method" do
      response_words = controller.swears.map(&:word)
      expect(response_words.size == request_words.size).to be(true)
    end

  end

end
