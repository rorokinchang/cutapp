class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :email
      t.string :name
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end