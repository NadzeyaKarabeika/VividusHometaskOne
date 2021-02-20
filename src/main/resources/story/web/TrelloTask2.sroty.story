Description: Second task for trello.com site

GivenStories: story/web/Preconditions.story

Scenario: Login As exisiting user
Given I am on the main application page
When I click on element by the xpath(//a[@href='/login'])
When I enter '<email>' in field by the xpath(//*[@id='user'])
When I click on element by the xpath(//input[@id='login'])
When I wait until an element with the text 'Log in to continue to:' appears
When I enter '<password>' in field by the xpath(//*[@id='password'])
When I click on element by the xpath((//span[@class='css-t5emrf'])[1])
When I wait until an element with the xpath(//button[@data-test-id="header-member-menu-button"]) appears
When I click on element by the xpath(//button[@data-test-id="header-member-menu-button"])
Then an element with by the xpath //div[text()='<userName>']
Examples:
|email                             |userName                   |userPassword                  |
|testpurposemail2021@gmail.com     |PurposeTest                |testemail12345678             |


