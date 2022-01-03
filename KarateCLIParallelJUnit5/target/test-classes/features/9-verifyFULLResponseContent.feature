Feature: POST 

Background:
	* def expectedOut2 = read('../Data/result2.json')
	
@Smoke
	Scenario: request user detail of 3
	Given url 'https://reqres.in/api/users/3'
	When method GET
	Then status 200
	Then print response
	And match response == expectedOut2