

Feature: Java Functions
Scenario: Call java method	
* def javaDemo = Java.type('subra.Javafunctions')
* def result = new javaDemo().nonstaticfunction("World");
 And match result == 'HelloWorld' 
 *	def result2 = javaDemo.staticfun("static")
 And match result2 == "I AM static"
# * def result3 = java.type('Karate.Demo.features.WriteData') 
# * def result3  