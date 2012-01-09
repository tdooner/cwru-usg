class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :type
      t.string :info
      t.text :blurb
      t.integer :vp_id

      t.timestamps
    end
  end
end
