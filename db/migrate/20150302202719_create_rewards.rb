class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :price
      t.integer :qty
      t.text :description
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
