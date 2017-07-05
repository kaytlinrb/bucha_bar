class Kombucha < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :origin, :presence => true

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :local, -> {where({:origin => seattle})}
  scope :most_reviews, -> {(
    select("kombuchas.id, kombuchas.author, kombuchas.content_body, kombuchas.rating, count(kombuchas.id) as kombuchas_count")
    .joins(:reviews)
    .group("kombuchas.id")
    .order("reviews_count DESC")
    .limit(1)
    )}
end
