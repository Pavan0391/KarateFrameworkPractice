Feature: Create user using post API

Background: 
    * url 'https://reqres.in/'
   
Scenario: create user with given payload 
    Given path 'api/users/2'
    When method delete
    Then status 204