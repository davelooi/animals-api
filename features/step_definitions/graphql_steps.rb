When("I make the graphql query:") do |string|
  @response = post('/graphql', query: string)
end

Then("I should receive:") do |string|
  actual = JSON.parse(@response.body)
  expected = JSON.parse(string)
  puts JSON.pretty_generate(actual) if actual != expected
  assert_equal(actual, expected)
end
