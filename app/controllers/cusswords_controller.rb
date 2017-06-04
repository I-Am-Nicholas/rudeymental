class CusswordsController < ApplicationController
  include CusswordsHelper

  def show
    session[:severity] = params[:severity]
    @severity = session[:severity]
    @cussword = Cussword.where("rating = ?", @severity)
    @cusses = @cussword.sample(2)
  end
end
