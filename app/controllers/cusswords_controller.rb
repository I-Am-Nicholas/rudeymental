class CusswordsController < ApplicationController
  include CusswordsHelper

  attr_reader :severity, :cussword

  def show
    session[:severe] = params[:severity]
    @severity = session[:severe]
    swears()
  end

  def swears
    @cusses = words.sample(2)
  end

  def words
    Cussword.where("rating = ?", severity)
  end

end
