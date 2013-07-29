class HoroscopesController < ApplicationController
  def index
  end

  def new
    @horoscope = Horoscope.new
  end
end
