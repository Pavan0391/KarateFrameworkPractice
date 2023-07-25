Feature: Create user using post API

Background: 
    * url 'https://reqres.in/'
    * def reqPayload = 
    """
    {    
    "name": "morpheus",
    "job": "zion resident"
    }
    """
Scenario: create user with given payload 
    Given path 'api/users/2'
    And request reqPayload
    When method post
    Then status 201
    * def jsonResponse = response
    * print jsonResponse
    * def Name = jsonResponse.name
    * def work = jsonResponse.job 
    * match Name == 'morpheus'
    * match work == 'zion resident'
    # And response[0].experience[*] == ['','','']
    # And response[0].experience[*]contains == ['']
    