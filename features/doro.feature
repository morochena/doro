Feature: My bootstrapped app kinda works
  In order to get going on coding my awesome app
  I want to have aruba and cucumber setup
  So I don't have to do it myself

  Scenario: App just runs
    When I get help for "doro"
    Then the exit status should be 0

  Scenario: App lists todos
    When I get list for "doro"
    Then cool beans?
