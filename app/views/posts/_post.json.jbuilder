# frozen_string_literal: true

json.extract! post, :id, :post, :created_at, :updated_at
json.url post_url(post, format: :json)
