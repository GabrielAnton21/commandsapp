class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :heading
      t.string :subheading
      t.text :text
      t.string :link
      t.string :buttontext

      t.timestamps
    end
  end
end
