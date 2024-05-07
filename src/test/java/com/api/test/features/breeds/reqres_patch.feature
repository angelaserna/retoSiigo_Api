Feature: Update one record on reqres.in

  Background:
    * def urlBase = 'https://reqres.in'
    * def path = 'api/users/2'

  Scenario Outline: Update name and job of user
    Given url urlBase + path
    And request { 'name': <name> , 'job': <job> }
    And header Content-Type = 'application/json-patch+json'
    And header Accept = 'application/json'
    When method PATCH
    * print response
    Then response.status == <status_code>

    Examples:
      | name       | job             | status_code |
      | 'morpheus' | 'zion resident' | 200         |