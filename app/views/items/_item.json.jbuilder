json.extract! item, :id, :title, :price, :review_rating, :review_count, :brand, :product_code, :availability, :quantity_available, :description, :created_at, :updated_at
json.url item_url(item, format: :json)
