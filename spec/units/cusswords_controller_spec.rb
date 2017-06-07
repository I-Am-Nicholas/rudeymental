describe CusswordsController, type: :controller  do

  describe 'Router' do
    it do
      should route(:get, '/').
      to(page: :home, controller: :cusswords, action: :index)
    end

    it do
      should route(:get, '/cusswords/show').
      to(controller: :cusswords, action: :show, id: :show)
    end
  end

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.code).to eq("200")
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

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

    it "returns specific rated words from database" do
      rating_arr = controller.words.map(&:rating)
      expect(rating_arr.all?{|n| n == severity_rating}).to be(true)
    end

    it "doesn't return words not requested from database" do
      rating_arr = controller.words.map(&:rating)
      expect(rating_arr.all?{|n| n == bat_rating}).to be(false)
    end

    it "returns specific number of words" do
      response_words = controller.swears.map(&:word)
      expect(response_words.size == request_words.size).to be(true)
    end

    it "returns words filtered through swears and words methods" do
      db_words = controller.show.map(&:word)
      expect(db_words.count).to eq(request_words.size)
      expect(db_words.all?{|w| w.is_a?String}).to be(true)
    end

  end

end
