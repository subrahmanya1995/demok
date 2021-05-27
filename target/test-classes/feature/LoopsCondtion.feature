
Feature: user Details

Background:
 * def expectedOutput = read('../subra/usersPage2.json')

Scenario: request user 3 details
 Given url 'https://reqres.in/api/users?page=2';
 When method GET
 Then status 200
 * def data = response.data
 Then print 'data----',data
 * def myFun =
 """
 function(arg){
 return arg.length
 }
 """
 
 * def myFun1 =
 """
 function(arg){
 return arg[0].id
 }
 """
 
* def numberOfUsers = call myFun data
 Then print 'numberOfUsers----',numberOfUsers
 
 # in muFun1 arg[0].id is indicating the 1st user id out of 6 users 
 * def userDetails1stUserId = call myFun1 data
 Then print 'userDetails1stUserId---',userDetails1stUserId
