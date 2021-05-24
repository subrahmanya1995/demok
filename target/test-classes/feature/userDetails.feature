
Feature: user Details

Scenario: get call back 

* def myVar = 'test'
* def expectedresult = read('../subra/result.json')
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
Then print response
#And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https:\/\/reqres.in\/img\/faces\/2-image.jpg"},"support":{"url":"https:\/\/reqres.in\/#support-heading","text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}

And match response == expectedresult
And match response.data.id == 2
And match response.data.last_name != null

* def job_code = response.data.job_code
#And match job_code == null;

#the above fields is not present in response so we have taken in variable

Then print myVar

