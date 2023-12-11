Feature: Add Layers to Map

  Scenario: User applies layers to the map and verifies the display
    Given the user is on map page
    When they open the layer modal
    And they apply layers to the map
    And they close the modal
    Then the layer should display according to the specified filters and settings
