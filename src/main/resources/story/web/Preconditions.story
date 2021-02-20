Scenario: Sign up
Given I am on the main application page
When I enter `<email>` in field by the xpath(//section[@id='hero']//input[@name='email'])
When I click on an element with the text 'Sign up—it’s free!'
When I wait until an element with the text 'Sign up for your account' appears
When I enter `<name>` in field by the xpath(//*[@id='displayName'])
When I enter `<password>` in field by the xpath(//input[@placeholder='Create password'])
When I click on element by the xpath(//button[@id='signup-submit'])
Then the page with URL 'https://trello.com/create-first-team' is loaded
Examples:
|email                             |userName                   |userPassword                  |
|testpurposemail2021@gmail.com     |PurposeTest                |testemail12345678             |
