Scenario: User opens the Hotels page
	Given The Dashboard page is opened
	When User clicks the Hotels link in the Main Menu
	Then The Hotels page opens
	And User sees the Search for Best Hotels section

Scenario: User searches for hotels in Dubai on the Hotels page
	Given The Hotels page is opened
	And User sees the Search for Best Hotels section
	When User clicks the City Name field
	And User types in "Dubai" in the City Name field
	And Dropdown appears with the search results
	And User clicks the option "Dubai, United Arab Emirates"
	And User clicks the Search button
	Then User waits for the loader ends running
	And The Hotels page with the list of Dubai hotels opens

Scenario: User selects a Dubai hotel with 3 stars 
	Given The Hotels page with the list of Dubai hotels is opened
	And User sees the Filter Search left sidebar
	When User checks the box for the 3-star rating option in the Star Grade filter
	And The list of Dubai hotels with 3 stars opens
	And User clicks the Details button for the first hotel option in the list
	Then The Hotel Details page opens

Scenario: User selects a room option for the chosen Dubai hotel
	Given The Hotel Details page is opened
	When User scrolls down the page to the Available Rooms section
	And User sees the list of available rooms options
	And User clicks the Book Now button for the first option in the list
	Then User waits for the loader ends running
	And The Hotel Booking page opens