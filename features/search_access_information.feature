Feature: Searching and Accessing Information
  Scenario: Address Search
    Given the user is on map page
    When they enter a specific address in the search bar
    And they submit the search
    Then they should zoom to interet points in the map
