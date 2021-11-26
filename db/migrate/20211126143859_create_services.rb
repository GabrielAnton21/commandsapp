class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :service_title
      t.string :service_contact
      t.string :service_type
      t.string :service_address
      t.string :service_owner
      t.string :service_ad_image_link

      t.timestamps
    end
  end
end
