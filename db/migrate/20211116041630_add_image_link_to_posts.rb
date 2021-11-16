class AddImageLinkToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :imagelink, :string
  end
end
