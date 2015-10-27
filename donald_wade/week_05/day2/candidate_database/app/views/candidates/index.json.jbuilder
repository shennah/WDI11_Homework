json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :first_name, :last_name, :email, :image, :recommendation1, :recommendation2, :recommendation3, :employer, :work_history
  json.url candidate_url(candidate, format: :json)
end
