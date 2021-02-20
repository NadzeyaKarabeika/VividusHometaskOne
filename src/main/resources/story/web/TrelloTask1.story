Dscription: 

Scenario: Sign up using expressions
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
|#{generate(Internet.emailAddress)}|#{generate(Name.name)}     |#{generate(Internet.password)}|
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)} |#{generate(Internet.password)}|


Scenario: New Trello board creation using API
Given request body: {
displayName: "DreamTeam"
teamType = "Operations"
}
When I issue a HTTP POST request for a resource with the URL 'https://trello.com/create-first-team'
Then the response code is equal to `200`

Scenario: Trello Board for User
When I click on element with the text 'Start without Business Class'
When I wait until an element with text 'Nice work!' appears
When I click on element by the xpath(//button[@data-test-id="moonshot-success-button"])
Then the element by the xpath(//span[@data-test-id="home-team-tab-name" and text()='DreamTeam']) exists

