class AddOwnerForeignKeyToProject < ActiveRecord::Migration
  def change
    add_column :projects, :owner_id, :integer
  	add_column :pledges, :backer_id, :integer
  end
end
