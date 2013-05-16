class CreateClubandChangeSurname < ActiveRecord::Migration
  def change
    remove_column :aristocrats, :last_name, :string
    add_column :aristocrats, :surname, :string
    add_column :servants, :nickname, :string
    add_column :servants, :aristocrat_id, :integer
    create_table :club do |c|
      c.string :name
      c.integer :aristoccrat_id
  end
    add_index :club, :name

end
