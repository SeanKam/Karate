Feature: Print Hello World feature

@Smoke
Scenario: Helllo World Scenario

	* print 'Hello World. Good Day!'
	* print 'Hello Naveem Automation Labs'

@Smoke	
Scenario: declare and print variables

	* def balance = 200
	* def fee = 20
	* def tax = 10
	* print 'total amount ->' + (balance + fee + tax)	

@Smoke
Scenario: Calculator Scenario

	* def fee = 20
	* def tax = 10
	* print 'total amount ->' + (fee * tax)	
	