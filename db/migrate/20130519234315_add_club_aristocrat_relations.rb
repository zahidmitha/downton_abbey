class AddClubAristocratRelations < ActiveRecord::Migration
  def change
    add_index :aristocrats_clubs, :aristocrat_id
    add_index :aristocrats_clubs, :club_id
  end

end
