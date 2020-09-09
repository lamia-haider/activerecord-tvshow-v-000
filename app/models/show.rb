class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.where('rating = ?', self.highest_rating).first #there could be multiple shows with the same highest rating
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    Show.where('rating = ?', self.lowest_rating).first #there could be multiple shows with the same highest rating
  end

  def slef.ratings_sum
    Show.sum("rating")
  end

end
