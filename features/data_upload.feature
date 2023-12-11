Feature: Data Upload and Layer Creation
  Scenario: Uploading Data
    Given the user is on map page
    When they click on upload button
    And they upload a valid data file
    And they set and search the addresses
    Then they should not get an error
