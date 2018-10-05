Feature: Destroy A Movie Entry

    As a movie watcher
    So I can update the movies page
    I want to destroy a movie 
    
Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
  
  
Scenario: Destroy a movie
    When I am on the details page for "THX-1138"
    And I press "Delete"
    Then I should see "Movie 'THX-1138' deleted."
    
    
Scenario: Navigate back to home page
    When I am on the details page for "Blade Runner"
    And I follow "Back to movie list"
    Then  I should be on the home page
    

 