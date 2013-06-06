class CreateClubandChangeSurname < ActiveRecord::Migration
  def change
    remove_column :aristocrats, :last_name
    add_column :aristocrats, :surname, :string
    add_column :servants, :nickname, :string
    add_column :servants, :aristocrat_id, :integer
    add_column :servants, :age, :integer
    create_table :clubs do |c|
      c.string :name
  end
    add_index :clubs, :name

  end

end
