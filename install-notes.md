This guide installs Twitterise on a Windows 7

# Install Ruby from RubyInstaller (very important!)

I've already had installed Ruby, version 2.1.3

http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.1.3-x64.exe?direct

# Install Development Kit

It will allow Windows users to use native C++ Ruby extensions. 

I used: http://cdn.rubyinstaller.org/archives/devkits/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe

Follow the instructions to install it from: 
https://github.com/oneclick/rubyinstaller/wiki/Development-Kit

# Install Twitterise

	git clone git@github.com:arturoherrero/twitterise.git
	bundle install

If you don't have installed the bundler gem, run `gem install bundler`

# Configure Twitterise

You need to create a [Twitter App](https://apps.twitter.com) and write key, token and secrets in a `.env` file.

TWITTER_CONSUMER_KEY="YOUR_CONSUMER_KEY"
TWITTER_CONSUMER_SECRET="YOUR_CONSUMER_SECRET"
TWITTER_ACCESS_TOKEN="YOUR_ACCESS_TOKEN"
TWITTER_ACCESS_SECRET="YOUR_ACCESS_SECRET"

# Install SQLite3 

Download the .exe and the .dll files from the [SQLite homepage](http://www.sqlite.org/download.html)

Extract them and copy them to <Ruby Home Folder>/bin.

It doesn't seems to work. 

Do I have to follow http://rubyonwindowsguides.github.io/book/ch02-05.html? Oh my...!


