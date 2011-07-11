class AddPhoneToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :phone, :string
  end

  def self.down
    remove_column :members, :phone
  end
end
