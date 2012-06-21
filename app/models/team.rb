class Team < ActiveRecord::Base
  attr_accessible :name, :price
  has_many :bids
end
