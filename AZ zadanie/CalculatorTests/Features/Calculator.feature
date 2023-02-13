Feature: Calculator

@SetFirstNumber
Scenario: Add two numbers
	Given the second number is 70
	When the two numbers are added
	Then the result should be 120

Scenario Outline: Subtract two numbers
	Given the first number is <x>
	And the second number is <y>
	When the two numbers are subtracted
	Then the result should be <result>
Examples:
| x  | y   | result |
| 50 | 70  | -20    |
| 90 | -10 | 100    |


Scenario Outline: Test the number of real solutions of a quadratic equation
    Given the coefficients of a quadratic equation are <a>, <b>, <c>
    When I calculate delta from <a>, <b>, <c> as coefficients of the quadratic equation
    Then the equation has <expectedNumberOfSolutions> real number solutions

    Examples:
      | a | b | c | expectedNumberOfSolutions |
      | 1 | 2 | 1 | 1                          |
      | 1 | 5 | 6 | 2                          |
      | 1 | 1 | 1 | 0                          |


