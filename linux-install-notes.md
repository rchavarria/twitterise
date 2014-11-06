# How to install Twitterise in Linux

Ubuntu 14.04

## Install `rbenv`

Follow own [`rbenv`](https://github.com/sstephenson/rbenv#installation) instructions.

Then, install [ruby-build](https://github.com/sstephenson/ruby-build#readme) rbenv pluging

## Install Ruby

If rbenv and ruby-build are installed, it is easy as a pie: `rbenv install 2.1.4` to
install version 2.1.4

Then, you have to configure that version to be used: `rbenv global 2.1.4`

## Install bundler gem

`gem install bundler`

## Download Twitterise and install its dependencies

	$ git clone https://github.com/arturoherrero/twitterise.git
	$ bundle install

## Configure your twitter account

Create your own [Twitter App](https://apps.twitter.com), get your tokens and secrets
and write them in a `.env` file:

```
TWITTER_CONSUMER_KEY="YOUR_CONSUMER_KEY"
TWITTER_CONSUMER_SECRET="YOUR_CONSUMER_SECRET"
TWITTER_ACCESS_TOKEN="YOUR_ACCESS_TOKEN"
TWITTER_ACCESS_SECRET="YOUR_ACCESS_SECRET"
```

### The twitter app must have write permissions

Do not forget to grant write permissions to your twitter app. If you generated 
tokens and secrets before, you need to regenerate them.

If you do not have read-write permissions you get this error message:

```
/home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/response/raise_error.rb:17:in `on_complete': Read-only application cannot POST. (Twitter::Error::Unauthorized)
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/response.rb:9:in `block in call'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/response.rb:57:in `on_complete'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/response.rb:8:in `call'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/request/url_encoded.rb:15:in `call'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/request/multipart.rb:14:in `call'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/request/multipart_with_file.rb:17:in `call'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/rack_builder.rb:139:in `build_response'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/connection.rb:377:in `run_request'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/faraday-0.9.0/lib/faraday/connection.rb:177:in `post'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/client.rb:108:in `request'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/client.rb:85:in `post'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/request.rb:22:in `perform'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/request.rb:29:in `perform_with_object'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/utils.rb:39:in `perform_with_object'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/friends_and_followers.rb:135:in `block in follow!'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/utils.rb:41:in `block in pmap'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/utils.rb:41:in `collect'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/utils.rb:41:in `pmap'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/friends_and_followers.rb:134:in `follow!'
	from /home/user/.rbenv/versions/2.1.4/lib/ruby/gems/2.1.0/gems/twitter-5.11.0/lib/twitter/rest/friends_and_followers.rb:114:in `follow'
	from /home/user/repositories/twitterise/lib/twitter_client.rb:36:in `block in follow'
	from /home/user/repositories/twitterise/lib/twitter_client.rb:52:in `call'
	from /home/user/repositories/twitterise/lib/twitter_client.rb:52:in `twitter_request'
	from /home/user/repositories/twitterise/lib/twitter_client.rb:34:in `follow'
	from /home/user/repositories/twitterise/lib/twitterise.rb:32:in `block in follow_new_users'
	from /home/user/repositories/twitterise/lib/twitterise.rb:31:in `each'
	from /home/user/repositories/twitterise/lib/twitterise.rb:31:in `follow_new_users'
	from /home/user/repositories/twitterise/lib/twitterise.rb:17:in `call'
	from bin/twitterise:7:in `<main>'
```

## Configure Twitterise params

You can configure how many twitter users you want to follow at a time, and how many
days will take to unfollow them. You have just to modify `lib/twitterise.rb` file.
These are the default values:

```
def number_to_follow
  5
end

def after_days
  5
end
```

