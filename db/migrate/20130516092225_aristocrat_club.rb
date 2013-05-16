class AristocratClub < ActiveRecord::Migration
  def change
    create_table :aristocratsclub do |t|
      t.integer :aristocrat_id
      t.integer :club_id
      add_index :aristocrat_id, :club_id
  end
end
