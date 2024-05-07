Feature: Post/Put/Patch/Delete Tests on reqres.in

  Background:
    * def urlBase = 'https://reqres.in'
    * def usersPath = '/api/users'


  Scenario: Put user
    Given url urlBase + usersPath + '/2'
    And request { name: 'morpheus updated',job: 'leader updated' }
    When method PUT
    Then status 200
    And match $.name == 'morpheus updated'