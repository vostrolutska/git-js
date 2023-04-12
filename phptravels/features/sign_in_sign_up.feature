Scenario: User opens the Login modal window
	Given Web browser is opened
	When User types in "https://phptravels.net/login" in the browser's address bar 
	And User clicks the first link in the search results
	Then The Login modal window opens
	And User sees the Login and Signup buttons
	
Scenario: User opens the Signup modal window
	Given The Login modal window is opened
	When User clicks the Signup button
	Then The Signup modal window opens

Scenario: User successfully registers on the site
	Given The Signup modal window is opened
	When User clicks the First Name field
	And User types in "Anna" in the First Name field
	And User clicks the Last Name field
	And User types in "Helman" in the Last Name field
	And User clicks the Phone field
	And User types in "(213) 370-4914" in the Phone field
	And User clicks the Email field
	And User types in "annahelman7@gmail.com" in the Email field
	And User clicks the Password field
	And User types in "Password@1234" in the Password field
	And User checks the I'm not a robot checkbox
	And User clicks the Signup button
	Then User waits for the loader ends running
	And The Login modal window opens
	And User sees a toast about successful registration

Scenario: User logs in to the account with the valid email and password
	Given The Login modal window is opened
	When User clicks the Email field
	And User types in "annahelman7@gmail.com" in the Email field
	And User clicks the Password field
	And User types in "Password@1234" in the Password field
	And User clicks the Login button
	Then User waits for the loader ends running
	And The Dashboard page opens
	And User sees the welcome message