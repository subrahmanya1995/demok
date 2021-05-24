Feature: external files

#variables can be defined in Background section, there should be space between * and variable name. 
Background:
 * def expectedOutput2 = read('../subra/result2.json')
 * def expectedOutput3 = read('classpath:subra/result3.json')
 * def expectedOutput4 = read('classpath:subra/result3.json')
 * def expectedOutput4 = read('classpath:subra/multipleJsons.json')
 
Scenario: request user 2 details
 	Given url 'https://reqres.in/api/users/4'
 	When method GET 
 	Then status 200
 	Then print response
 	And match response == expectedOutput2 
 	
Scenario: request user 3 details
 	Given url 'https://reqres.in/api/users/5'
 	When method GET
 	Then status 200
 	Then print response
 	And match response == expectedOutput3
 	
Scenario: request user 4 details
 	Given url 'https://reqres.in/api/users/6'
 	When method GET 
 	Then status 200
 	Then print response
 	And match response == expectedOutput4[0]
 	
 @parallel=false	
Scenario: request user 5 details
 	Given url 'https://reqres.in/api/users/7'
 	When method GET 
 	Then status 200
 	Then print response
 	And match response == expectedOutput4[1]