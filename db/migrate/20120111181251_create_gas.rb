class CreateGas < ActiveRecord::Migration
  def change
    create_table :gas do |t|
      t.date :date
      t.integer :agenda_id
      t.integer :minutes_id
      t.string :video
      t.text :notes

      t.timestamps
    end
  end
end
