@ignore
Feature : API Authentication

Background:
* url 'https://reqres.in/api/'
    
Scenario: Authentication test
    * def params = 
    """
    {
   		'email': '#(email)',
   		'password' : '#(password)'
    }
    """
When path 'Oauth2/token'
And form field grant_type = 'client_credentials'

#And form field email = 'eve.holt@reqres.in'
#And form field password = 'pistol'

And form fields params

When method POST
Then status 200
Then print 'response----',response

* def accessToken = response .token
Then print 'accessToken--',accessToken

"""
When path 'register'
Add header Authorization = 'Bearer' +  accessToken
when method GET
"""