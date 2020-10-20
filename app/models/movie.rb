class Movie < ActiveRecord::Base
  has_many :reviews
  before_save :capitalize_title
  def capitalize_title
    self.title = self.title.split(/\s+/).map(&:downcase).
      map(&:capitalize).join(' ')
  end
  def Test_rating
    self.rating = "5"
  end
  def Movie_title
      self.title = "MIB"
  end

  def Movie_description
      self.description = "American science fiction action comedy film"        
  end
        
  def Movie_release
      self.release_date = "September 21, 2016"
  end

end
