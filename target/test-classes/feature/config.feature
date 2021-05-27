

 Feature: user Details 
   Background:
   * def expectedoutput = read('../subra/result2.json')
   
   Scenario: request user details 
  # Given url 'https://reqres.in/api/user?page=2'
    Given url 'https://reqres.in/api/users/4'
    When method GET
    Then status 200
    And match response == expectedoutput 