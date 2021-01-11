Product.delete_all
User.delete_all
User.create(
  name: "admin",
  email: "admin@gmail.com",
  password: "123123",
  password_confirmation: "123123"
)

3.times do
  user = User.create! email: Faker::Internet.email, password: 'locadex1234'

  2.times do
  product = Product.create!(
    title: Faker::Commerce.product_name,
    price: rand(1.0..100.0),
    published: true,
    user_id: user.id
  )
  end
end
