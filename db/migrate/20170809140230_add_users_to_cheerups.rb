class AddUsersToCheerups < ActiveRecord::Migration[5.1]
  def change
    add_reference :cheerups, :user, foreign_key: true
  end
end
