
Feature: user Details

Background:
 * def expectedOutput = read('../subra/result3.json')

Scenario: request user 3 details
 Given url 'https://reqres.in/api/users/5';
 When method GET
 Then status 200
 * def myFun1 = function(){ return 'Hello'}
 * def returnData = call myFun1
 Then print 'returnData----',returnData
 * def myFun2 =
 """
 function(){
 return 'myData'
 }
 """
* def returnData2 = call myFun2
Then print 'returnData2----',returnData2
# reading from json
# def data = response.data

