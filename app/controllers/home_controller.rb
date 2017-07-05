class HomeController < ApplicationController
  def home
    @recent = Kombucha.three_most_recent
    @most_review = Kombucha.most_reviews
  end
end
