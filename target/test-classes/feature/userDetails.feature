
Feature: user Details

Scenario: get call back 
* def epectedOutput=read{'result.json'}
* def myVar = 'test'
* def job_code =response.data.job_code
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response
#And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/reqres.in\/img\/faces\/2-image.jpg"},"support":{"url":"https:\/\/reqres.in\/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}


And match response == epectedOutput
And match response.data.id==2
And match response.data.last_name != null
And match job_code==null

#the above filed is not present in response so we have taken in varaible

Then print myVar