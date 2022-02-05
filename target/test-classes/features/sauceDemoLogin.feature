Feature: Sauce Demo Login
  		This feature focus on positive and nefative login tests

	@SauceValidLogin
  Scenario: Valid login test
    Given I am on the SuaceDemo login page
    When I enter valid username "standard_user" password "secret_sauce"
    And I click on the login button
    Then I should be directed to inventory page
    And There should be 6 items in the page
	
	
		@SauceInvalidLogin
   
    Scenario: Invalid login test
    Given I am on the SauceDemo login page
    When I enter invalid username "standard_user" password "secret_invalid"
    And I click on the login button
    Then I should not be logged in
    And Error message should display "Epic sadface: Username and password do not match any user in this service"