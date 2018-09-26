require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key        = "eH88T5NEbvmXUX8kjQPWROhtp"
	config.consumer_secret     = "dWqfKScftcneC7x7rWfVQmjIhKNQbMYwy5v4D1ZOjNZvaPczqp"
	config.access_token        = "1043210348868919298-ZjCpsxEaFkideJuMZ1ILpde41dWOYM"
	config.access_token_secret = "o3u6VbyEnaEnKPG4lV8M8IhR0qSm5qDV4lkqLKUOPXUIu"
end

tweets = client.home_timeline(count: 20)

tweets.each do |tweet|
	# Filter own tweets and tweets with no uris
	if (tweet.user.name != "DelvareK" && tweet.uris.count > 0)
		uris = tweet.uris.map { |uri| uri.expanded_url }
		puts "#{tweet.user.name}: #{uris.join(', ')} / #{tweet.text}"
	end
end
