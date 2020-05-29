Feature: Users
  Scenario: List all users

  Given there are some users
  When I make the graphql query:
  ```
  query {
    users {
      uuid
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
          "uuid": "1fb2dc13-8082-42d5-a33c-90a0cb1b662c",
          "name": "Bruce Wayne",
          "email": "bruce@wayne.com"
        },
        {
          "uuid": "cd8b4fb2-f958-472f-9bc5-cda1487696eb",
          "name": "Clark Kent",
          "email": "clark@kent.com"
        }
      ]
    }
  }
  ```
