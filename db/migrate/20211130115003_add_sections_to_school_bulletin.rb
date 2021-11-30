class AddSectionsToSchoolBulletin < ActiveRecord::Migration[6.1]
  def change
    add_column :school_bulletins, :date, :string
    add_column :school_bulletins, :greeting, :string
    add_column :school_bulletins, :closing, :string

  end
end
