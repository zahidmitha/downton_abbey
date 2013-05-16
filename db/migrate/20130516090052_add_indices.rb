class AddIndices < ActiveRecord::Migration
  def change
    add_index :aristocrats, :surname
    add_index :servants, :age
    add_index :servants, :aristocrat_id
  end

end
