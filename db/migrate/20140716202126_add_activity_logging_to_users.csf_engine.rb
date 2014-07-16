# This migration comes from csf_engine (originally 20140716191201)
class AddActivityLoggingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_login_at, :datetime
    add_column :users, :last_logout_at, :datetime
    add_column :users, :last_activity_at, :datetime
    add_index  :users, [ :last_logout_at, :last_activity_at ]
  end
end
