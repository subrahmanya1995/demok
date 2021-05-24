Feature: test post call

Background: 
* def jsonPayLoad = read('../subra/postRequest1.json')
* url 'https://reqres.in/api/users'


Scenario: create user details

#Given url "https://reqres.in/api/users"
Given path 8
#And request '{"name": "morpheus","job": "leader"}'

And request jsonPayLoad
And param delay = 3
#And params {delay = 3,}
#And header Content-Type= 'application/json'
And headers {Content-Type: 'application/json',Accept: 'application/json'}

When method POST 
# before this POST we have given payload (BODY)
 
Then status 201
Then print 'response-->',response

#what ever we write in Background section , that is common to each all scenarios present in feature file.