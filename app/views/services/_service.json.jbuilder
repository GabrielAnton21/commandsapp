json.extract! service, :id, :service_title, :service_contact, :service_type, :service_address, :service_owner, :service_ad_image_link, :created_at, :updated_at
json.url service_url(service, format: :json)
