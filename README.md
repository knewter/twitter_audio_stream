TwitterAudioStream
==================

Just stream a twitter search into your speakers...

Each tweet that comes across is analyzed (right now it's just character count)
and that number is used to generate an .au file of a set duration, which is then
immediately played (using paplay).

To use it:

```elixir
TwitterAudioStream.PlayTweets.play("apple")
```

NOTE: You'll also need these environment variables set to something legitimate
vis a vis the Twitter API:

```
TWITTER_CONSUMER_KEY
TWITTER_CONSUMER_SECRET
TWITTER_ACCESS_TOKEN
TWITTER_ACCESS_SECRET
```
