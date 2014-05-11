class App < ActiveRecord::Base
  has_many :emails

  validates_presence_of :token, :name
  validates_uniqueness_of :token

end
