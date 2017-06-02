require 'spec/rails_helper'

describe "CusswordsController" do
  let(:cuss){Cussword.new}

  describe "Rudeymental App" do
    it "returns text of a specific rating" do
      x = Cussword.where("rating = ?", 1)
      expect(x).to eq(1)
    end


  end



end
