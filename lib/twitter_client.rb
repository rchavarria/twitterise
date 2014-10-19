require "twitter"

class TwitterClient
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_SECRET"]
    end
  end

  # Returns an array of numeric IDs
  # If not user_id is specified, refers to the implicit authenticated user.
  def following(user_id = nil)
    client.friend_ids(user_id).to_a
  end

  # Returns an array of numeric IDs
  # If not user_id is specified, refers to the implicit authenticated user.
  def followers(user_id = nil)
    client.follower_ids(user_id).to_a
  end

  def follow(user_id)
    client.follow(user_id)
  end

  def unfollow(user_id)
    client.unfollow(user_id)
  end

  private

  attr_reader :client
end