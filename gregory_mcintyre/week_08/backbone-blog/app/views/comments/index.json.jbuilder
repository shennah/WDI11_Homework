json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :post_id
end
