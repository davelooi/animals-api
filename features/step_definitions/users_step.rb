Given("there are some users") do
  User.create!(name: 'Bruce Wayne', email: 'bruce@wayne.com', uuid: '1fb2dc13-8082-42d5-a33c-90a0cb1b662c')
  User.create!(name: 'Clark Kent', email: 'clark@kent.com', uuid: 'cd8b4fb2-f958-472f-9bc5-cda1487696eb')
end

When("I make the graphql query:") do |string|
  @response = post('/graphql', query: string)
end

Then("I should receive:") do |string|
  actual = JSON.parse(@response.body)
  expected = JSON.parse(string)
  puts JSON.pretty_generate(actual) if actual != expected
  assert_equal(actual, expected)
end
