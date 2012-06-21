class Bid < ActiveRecord::Base
  attr_accessible :bid_amount, :integer, :team_id, :user_id
  belongs_to :user
end
