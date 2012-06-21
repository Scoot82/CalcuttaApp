class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :team_id
      t.string :integer
      t.integer :bid_amount
      t.integer :user_id

      t.timestamps
    end
  end
end
