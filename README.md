# Twitter Urls

Fetches Urls from home timeline.

## Prerequisites

Requires *twitter* gem to work

`gem install twitter`

Requires a Twitter developer's account, fill your keys and token:

	config.consumer_key        = ""
	config.consumer_secret     = ""
	config.access_token        = ""
	config.access_token_secret = ""

## Usage

`ruby twurls.rb`

Fetches 20 tweets by default, can be overridden:

`ruby twurls.rb <number>`
