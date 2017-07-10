class HomeController < ApplicationController
  def home
    @recent = Kombucha.three_most_recent
    @most_review = Kombucha.most_reviews
    @local_kombuchas = Kombucha.local_kombuchas
  end
end
