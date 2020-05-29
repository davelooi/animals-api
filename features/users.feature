Feature: Users
  Scenario: List all users

  Given there are some users
  When I make the graphql query:
  ```
  query {
    users {
      handle
      name
      email
    }
  }
  ```
  Then I should receive:
  ```
  {
    "data": {
      "users": [
        {
          "handle": "batman",
          "name": "Bruce Wayne",
          "email": "bruce@wayne.com"
        },
        {
          "handle": "superman",
          "name": "Clark Kent",
          "email": "clark@kent.com"
        }
      ]
    }
  }
  ```
