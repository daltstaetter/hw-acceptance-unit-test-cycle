Feature: Create A New Movie Entry

    As a movie watcher
    So I can update the movies page with newly reviewed movies
    I want to create a movie 
    
Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
  
  
Scenario: Creating a new movie
    When I am on the home page
    And I follow "Add new movie"
    And I fill in "Title" with "Superman"
    And I select "PG-13" from "Rating"
    And I select "2018" from "movie[release_date(1i)]"
    And I select "October" from "movie[release_date(2i)]"
    And I select "25" from "movie[release_date(3i)]"
    And I press "Save Changes"
    Then I should see "PG-13"
    Then I should see "Superman"
    

 