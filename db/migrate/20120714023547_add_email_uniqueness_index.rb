#added by Yizhen,  make sure both user/email have been indexed - to ensure the uniquiness of the user/email
class AddEmailUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :users, :email, :unique => true
  end

  def self.down
   remove_index :users, :email
  end
end