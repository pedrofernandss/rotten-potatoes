Feature: View movie list after adding movies

  Scenario: View movie list after adding 2 movies
    Given I am on the RottenPotatoes home page
    When I follow "New movie"
    And I fill in "Title" with "Zorro"
    And I select "PG" from "Rating"
    And I fill in "Release date" with "1998-07-17"
    And I press "Create Movie"
    And I follow "Back to movies"
    And I follow "New movie"
    And I fill in "Title" with "Apocalypse Now"
    And I select "R" from "Rating"
    And I fill in "Release date" with "1979-08-15"
    And I press "Create Movie"
    And I follow "Back to movies"
    And I follow "Movie Title"
    Then I should see "Apocalypse Now" before "Zorro"

  Scenario: View movie list after adding 2 movies declaratively
    Given the following movies have been added:
      | title          | rating | release_date |
      | Zorro          | PG     | 1998-07-17   |
      | Apocalypse Now | R      | 1979-08-15   |
    When I sort the movie list by title
    Then I should see "Apocalypse Now" before "Zorro"