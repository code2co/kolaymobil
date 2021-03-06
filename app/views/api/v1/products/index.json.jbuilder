
json.products @products do |product|
  json.id product.id
  json.name product.name
  json.description product.description
  json.company_id product.company_id
  json.category_id product.category_id
  json.image image_url(product.image(:medium))

end

json.setting do
  json.name_ionic @company.setting.color.name_ionic

end
