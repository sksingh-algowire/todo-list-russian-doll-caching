json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :inr_price, :usd_price, :img_path, :column_1, :column_2, :column_3, :column_4, :column_5
  json.url product_url(product, format: :json)
end
