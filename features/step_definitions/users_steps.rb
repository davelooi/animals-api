Given("there are some users") do
  User.create!(name: 'Bruce Wayne', email: 'bruce@wayne.com', handle: 'batman')
  User.create!(name: 'Clark Kent', email: 'clark@kent.com', handle: 'superman')
end

Given("I am a user") do
  @user = User.create!(name: 'Bruce Wayne', email: 'bruce@wayne.com', handle: 'batman')
end
