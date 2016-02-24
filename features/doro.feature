Feature: My bootstrapped app kinda works
  In order to keep track of my time
  I want use a command line tool to manage my pomodoros

  Scenario: App just runs
    When I run `doro help`
    Then the exit status should be 0

  Scenario: App lists todos
    When I run `doro list`
    Then the output should contain "["
    And the output should contain "]"
