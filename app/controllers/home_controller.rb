class HomeController < ApplicationController
  def index
    @stock = Stock.all
  end

  def kitty
    response = { title:  "Kitty Jam",
                 artist: "Meowser",
                 release_date: "Jan 1, 2016" }

    respond_to do |format|
      format.html
      format.json { render json: response }
      format.xml  { render xml: response }
    end
  end
end
