
Feature: get request API feature
Scenario: get request assertion

    Given url 'https://reqres.in/api/users/'
    And path 2
    When method get
    Then status 200
    * def jsonResponse = response
    * def firstName = jsonResponse.data.first_name
    * def email = jsonResponse.data.email 
    * match firstName == 'Janet'
    * match email == 'janet.weaver@reqres.in'

        
Scenario: get request assertion - user not found
    Given url 'https://reqres.in/api/users'
    And path 50
    When method get
    Then status 404

Scenario: get request assertion using fuzzy

    Given url 'https://reqres.in/api/users/'
    And path 2
    When method get
    Then status 200
    * def jsonResponse = response
    * def firstName = jsonResponse.data.first_name
    * def email = jsonResponse.data.email 
    * match firstName == '#string'
    * match email == '#present'
#     * match id == '#? _ == 1'  // _ means self in js which is replace with id
#    // * match id == '#? _ != 1'
#    // * match job title == '#string? _.length >= 1'
#    // * match experience == '#[]''
#    // * match experience == '#[3]''
#    // * match experience == '#[] #string'
#    // * match experience == '#[3] #string? _.length >= 2'
   
    