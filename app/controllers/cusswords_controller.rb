class CusswordsController < ApplicationController
  include CusswordsHelper

  attr_reader :swear_level

  def show
    session[:severe] = params[:severity]
    @swear_level = session[:severe]
    swears()
  end

  def swears
    @cusses = words.sample(2)
  end

  def words
    Cussword.where("rating = ?", swear_level)
  end

end
