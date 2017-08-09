class AddUpvotesToCheerups < ActiveRecord::Migration[5.1]
  def change
    add_column :cheerups, :upvote, :integer, :default => 0
  end
end
