class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :email
      t.boolean :senior
      t.boolean :student
      t.string :country

      t.timestamps
    end
  end
end
