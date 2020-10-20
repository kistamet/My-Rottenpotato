Feature: User can manually Delete movie 

Scenario: Delete movie
    Given I am on the RottenPotatoes home page
    When I follow "Add new movie"
    Then I should be on the Create New Movie page
    When I fill in "Title" with "avenger"
    And I select "G" from "Rating"
    And I press "Save Changes"
    And I follow "Back to movie list"
    Then I should be on the RottenPotatoes home page
    And I should see "avenger"
    Then I follow "More about avenger"
    And I follow "Delete"
    Then I should see "Movie 'avenger' deleted" 