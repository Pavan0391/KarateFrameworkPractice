Feature: Verify posts api for mysocial

Background: Initialize stuff
   Given url 'https://jsonplaceholder.typicode.com'

@parallel=false
Scenario Outline: Verify /post/<postId> works
    Given path 'posts'
    And path <postId>
    When method get
    Then status 200
    And match response contains
    """
    {
        "userId": '#number',
        "id": <postId>,
        "title":  '#string'
      }   
    """

    Examples:
        | postId |  
        |  1     |
        |  2     |
        |  3     |
