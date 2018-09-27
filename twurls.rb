require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key        = ""
	config.consumer_secret     = ""
	config.access_token        = ""
	config.access_token_secret = ""
end

count = ARGV[0] || 20
tweets = client.home_timeline(count: count)

tweets.each do |tweet|
	# Filter own tweets and tweets with no uris
	if (tweet.user.name != client.user.name && tweet.uris.count > 0)
		uris = tweet.uris.map { |uri| uri.expanded_url }
		puts "#{tweet.user.name}: #{uris.join(', ')} / #{tweet.text}"
	end
end
