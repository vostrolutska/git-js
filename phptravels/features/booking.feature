Scenario: User confirms the booking of the selected Dubai hotel room option
	Given The Hotel Booking page is opened
	And User scrolls down the page to the Payment Method section
	And User selects the Pay With Stripe payment option
	And User checks the By continuing, you agree to the Terms and Conditions checkbox
	And User clicks the Confirm Booking button
	Then User waits for the loader ends running
	And The Booking Invoice page opens

Scenario: User pays for the selected Dubai hotel room option
	Given The Booking Invoice page is opened
	And User sees the Proceed button in the Payment section
	When User clicks the Proceed button
	And User waits for the loader ends running
	And The Stripe modal window opens
	And User sees the Pay Now and Back to Invoice buttons
	And User clicks the Pay Now button
	And The Pay with Card form opens
	And User sees the Card information section
	And User clicks the Card Number field
	And User types in "4242 4242 4242 4242" in the Card Number field
	And User clicks the Card Expiration Date field
	And User types in "0324" in the Card Expiration Date field
	And User clicks the CVC field
	And User types in "777" in the CVC field
	And User clicks the Name on card field
	And User types in "Anna Helman" in the Name on card field
	And User sees the Country or region section
	And User clicks the ZIP field
	And User types in "90001" in the ZIP field
	And User clicks the Pay button
	Then User waits for the loader ends running
	And The Booking Invoice page opens
	And User sees a confirmation message about the booking and payment status