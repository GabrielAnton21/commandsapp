class AddButtonToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :buttontext, :string
  end
end
