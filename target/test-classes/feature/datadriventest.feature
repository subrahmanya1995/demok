Feature: data driven test

Background: 
* url 'http://dummy.restapiexample.com/' 

Scenario Outline: create user details
	Given path 'api/v1/create'
    And request {"name":<name>,"salary":<salary>,"age":<age>}
    When method POST
    Then status 200
    Then print 'responseDataDriven1---',response
    * def result = response
    
    
    Given path 'api/v1/employee/'+ result.data.id
    And method GET
    Then status 200
    Then print 'responseDataDriven2---',response
    And match response.data contains {id:'#(result.data.id)'}
	
	Examples:
	#|name|salary|age|
	#|subramanya1|12345|23|
	|read('../subra/testData.csv')|
	