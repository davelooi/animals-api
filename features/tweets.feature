Feature: Tweets
  Scenario: Tweets of a user

  Given I am a user
  And I have some tweets
  When I make the graphql query:
  ```
  mutation {
    createTweet(input: {
      handle: "batman"
      text: "pew pew pew"
    }) {
      tweet {
        text
        user {
          handle
        }
      }
    }
  }
  ```
  Then I should receive:
  ```
  {
    "data": {
      "createTweet": {
        "tweet": {
          "text": "pew pew pew",
          "user": {
            "handle": "batman"
          }
        }
      }
    }
  }
  ```

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
          },
          {
            "text": "pew pew pew"
          }
        ]
      }
    }
  }
  ```
