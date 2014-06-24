# This migration comes from csf_engine (originally 20140620104410)
class SorceryRememberMe < ActiveRecord::Migration
  def change
    add_column :users, :remember_me_token, :string, :default => nil
    add_column :users, :remember_me_token_expires_at, :datetime, :default => nil
    add_index  :users, :remember_me_token
  end
end
