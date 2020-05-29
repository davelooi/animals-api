Feature: Tweets
  Scenario: Tweets of a user

  Given I am a user
  And I have some tweets
  When I make the graphql query:
  ```
  query {
    user(handle: "batman") {
      handle
      tweets {
        text
      }
    }
  }
  ```
  Then I should receive:
  ```
  {
    "data": {
      "user": {
        "handle": "batman",
        "tweets": [
          {
            "text": "I am Batman"
          },
          {
            "text": "I like to brood"
          }
        ]
      }
    }
  }
  ```
