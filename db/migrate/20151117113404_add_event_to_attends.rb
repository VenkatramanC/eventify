class AddEventToAttends < ActiveRecord::Migration
  def change
    add_reference :attends, :events, index: true, foreign_key: true
  end
end
