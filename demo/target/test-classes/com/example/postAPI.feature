Feature: Create user using post API

Background: 
    * url 'https://reqres.in'
    * def reqPayload = read('user.json')
    
Scenario: create user with given payload 
    Given path '/api/users'
    And request reqPayload
    When method post
    Then status 201
    * def jsonResponse = response
    * print jsonResponse
    * def Name = jsonResponse.name
    * def Mail = jsonResponse.mail 
    * match Name == 'Roger'
    * match Mail == 'roger@gmail.com'
    * def expectedRes = read('userResVal.json')
    * match jsonResponse == expectedRes

Scenario: create user with given payload 
    Given path '/api/users'
    And request reqPayload
    When method post
    Then status 201
    * def jsonResponse = response
    * def expectedRes = read('userResVal.json')
    * match jsonResponse == expectedRes