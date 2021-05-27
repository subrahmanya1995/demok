Feature: call to token generation feature

Background:
 * def myfeature = call read('userDetailAuth.feature'){'email': 'eve.holt@reqres.in', 'password': 'pistol'}
 * def authToken = myfeature.accesToken
 
 Scenario: GET call
 When url 'https://reqres.in/api/users?page=2'
 And header Authorization = authToken
 When method GET
 Then status 200