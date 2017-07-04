class HomeController < ApplicationController
  def home
    @recent = Kombucha.three_most_recent
  end
end
