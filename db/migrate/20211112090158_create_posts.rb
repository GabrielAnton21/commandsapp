class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :heading
      t.string :subheading
      t.text :text

      t.timestamps
    end
  end
end
