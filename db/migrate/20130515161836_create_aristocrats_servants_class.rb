class CreateAristocratsServantsClass < ActiveRecord::Migration

  def change
    create_table :aristocrats do |a|
      a.string :first_name
      a.string :last_name
      a.string :email
    end

    create_table :servants do |s|
      s.string :last_name
      s.string :occupation
    end

  end

end
