Description: Second task for trello.com site

GivenStories: story/web/Preconditions.story

Scenario: Login As exisiting user
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I enter `<email>` in field located `By.xpath(//*[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then the page with the URL containing 'https://id.atlassian.com/login?application=trello&continue=' is loaded
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath((//span[@class='css-t5emrf'])[1])`
When I wait until the page title contains the text 'Boards'
Then the page with the URL 'https://trello.com/create-first-team' is loaded
Examples:
|email                        |password         |
|testpurposemail2021@gmail.com|testemail12345678|


