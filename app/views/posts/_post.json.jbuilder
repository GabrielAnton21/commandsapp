json.extract! post, :id, :heading, :subheading, :text, :created_at, :updated_at
json.url post_url(post, format: :json)
