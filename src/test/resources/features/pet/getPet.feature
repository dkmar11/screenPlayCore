Feature: get pet by id
  as user want to get a pet by its id

  @api
  Scenario: Searching for a term
    When the user wants to get a id with id "9223372036854775592"
    Then the response should match the schema "getPetByIdSchema"
    And the user should see the following response
      | key          | value     |
      | name         | doggie    |
      | status       | available |
      | tags[0].name | string    |

