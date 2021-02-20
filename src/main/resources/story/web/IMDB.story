Description: Task One User activity on IMDb site

Scenario: Create a new IMDB account
Given I am on a page with the URL ‘https://www.imdb.com/’
When I click on an element with the text 'Sign In'
When I click on an element with the text 'Sign in with Google’
When I fill <email> and <password> to create account
Then the page with the URL 'https://www.imdb.com/?ref_=login' is loaded
And field located `By.xpath(//span[contains(.,'Purpose')])` exists
Examples:
|email|password|
|testpurposemail2021@gmail.com|testemail12345678|


Scenario: Perform search for a movie
When I enter "<film name>" into a field by the xpath (//input[@id="suggestion-search"])
And I click on an element by the xpath (//button[@id="suggestion-search-button"])
And I wait untill an element with the xpath (//div[@id="pagecontent"]) appears
Then an element with the text 'Results for, "<film name>" appears
Examples:
|film name|
|Riddick|

Scenario: Adding found movie into the Watchlist
When I click on an element by the expath (//a[contains(@href, 'title') and text()='<film name>'])
When I wait until an element with the xpath (//div[@class='title-overview']) appears
When I click on an element with the text ‘Add to Watchlist’
And I wait until an element with the text 'Added to Watchlist' appears
When I click on an element with the xpath (//div[text()='Watchlist'])
Then an element with the text 'Your Watchlist' appears
And an element with the name "<film name>" exists
Examples:
|film name|
|Riddick|

Scenario: Sort and Export the Whatchlist
When I click on element with the xpath(//select[@class='lister-sort-by'])
When I click on element with the xpath(//select[@class='lister-sort-by']/option[text()='Popularity'])
When I click on element with the xpath(//a[contains(@href, 'list') and text()='Export this list'])