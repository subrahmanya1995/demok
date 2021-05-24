
Feature: user Details

Background:
 * def expectedOutput = read('../subra/result3.json')
 * def result = call read('userDetails.feature')

Scenario: request user 3 details
 Given url 'https://reqres.in/api/users/5';
 When method GET
 Then status 200
 #Then print response
 And match response == expectedOutput
 Then print 'result----',result
 * def Date = result.responseHeaders.Date
  Then print 'Date:',Date



