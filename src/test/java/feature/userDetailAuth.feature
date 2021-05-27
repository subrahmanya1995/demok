@ignore
Feature: API Authentication

Background:
* url 'https://reqres.in/api/'
    
Scenario: Authentication test
* def params = {'email': '#(email)','password' : '#(password)'}
    
When path 'Oauth2/token'
#And form_field grant_type = 'client_credentials'
#And form_field email = 'eve.holt@reqres.in'
#And form_field password = 'pistol'

And form fields params

When method POST
Then status 201
Then print 'response----',response

* def accessToken = response .token
Then print 'accessToken--',accessToken