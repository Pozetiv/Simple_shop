FactoryBot.define do
  factory :standart_product, class: Product do
    name 'test_product_name'
    description 'test_product_description'
    price 10
    category "Cup"
    quantity 1
  end
end