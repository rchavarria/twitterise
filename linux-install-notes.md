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

