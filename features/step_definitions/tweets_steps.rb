Given("I have some tweets") do
  @user.tweets.create!(text: 'I am Batman')
  @user.tweets.create!(text: 'I like to brood')
end
