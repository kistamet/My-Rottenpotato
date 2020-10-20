class user < ActiveRecord::Base
  has_many :reviews
  has_many :movies, :through => :reviews
  def self.create_with_omniauth(auth)
    user.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end
end
