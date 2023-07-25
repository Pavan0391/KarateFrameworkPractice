Feature: Create user using post API

Background: 
    * url 'https://reqres.in'
    
     * def random_mail =
    """
    function (mail){
        var text = "";
        var pattern = "ABCDEFGHIJKLMOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
        for(var i=0;i<mail;i++)
        text +=pattern.charAt(Math.floor(Math.random() * pattern.length()));
        return text;

    }
    """
    * def emailString = random_mail(10)
    
    * def reqPayload =  
    """
    {
    "name": "brad",
    "job": "manager",
    "gender": "male"
    }
    """
    * reqPayload.mail = emailString +"@gmail.com"
Scenario: create user with given payload 
    Given path '/api/users'
    And request reqPayload
    When method post
    Then status 201
    * def jsonResponse = response
    * print jsonResponse
    * def Name = jsonResponse.name
    * def work = jsonResponse.job 
    * match Name == 'brad'
    * match work == 'manager'