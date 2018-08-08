# Setup - 
Clone this repository and run bundle install and starts rails server. Yay, setup is done. Check out "localhost:3000".

## About URL
Shorten your URL so it’s ready to be shared everywhere. 

## URL entity
Underlying data table URL holds values like input URL, output shortened URL, no of times it was clicked etc. 

## Development
It was developed in TDD fashion starting with system tests to cover page navigation than the model test to ensure core functionality. 


## Notes
Redirecting to original URL is handled inside the URL controller bypass method call. 
Also by adding '/stats' at end of shortened URL, you can get back JSON response stating all details about that URL. 
 
Improvements
-  User authentication.
-  Add more test and fix pending test.
-  Limit number of request based on IP
- Better validation to ensure given URL is a valid URL.
 