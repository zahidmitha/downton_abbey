class AristocratClub < ActiveRecord::Migration
  def change
    create_table :aristocrats_clubs do |t|
      t.integer :aristocrat_id
      t.integer :club_id

    end
  end

end