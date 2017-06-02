class CusswordsController < ApplicationController
  include CusswordsHelper

  def show
    session[:x] = params[:severity]
    @severity = session[:x]
    @cussword = Cussword.where("rating = ?", @severity)
    @cusses = @cussword.sample(2)
  end
end
