# Twitterise

Two objectives:

1. Have a **new and diverse timeline over the time**. We always follow people
similar to us, let's start with new ideas from different people. **By default
Twitterise follows 5 new people for 5 days**. These numbers are not completely
random because we need to deal with the [Twitter API rate limits][1], but
it can definitely be much more aggressive.

2. Increase the number of followers is a by product but following people sometimes
they will follow you back. Again, remember the Twitter following rules and best
practices or maybe one day you are going to wonder [why can't I follow people?][2]


## Instalation

    $ git clone git@github.com:arturoherrero/twitterise.git
    $ bundle install

We need to create a new [Twitter App][3] to work with the Twitter API. Also
it's necessary to create a `.env` file with the environment variables needed by
the Twitter client.

    TWITTER_CONSUMER_KEY="YOUR_CONSUMER_KEY"
    TWITTER_CONSUMER_SECRET="YOUR_CONSUMER_SECRET"
    TWITTER_ACCESS_TOKEN="YOUR_ACCESS_TOKEN"
    TWITTER_ACCESS_SECRET="YOUR_ACCESS_SECRET"


## Usage

Setup the SQLite database, all the information is self-contained in the
Twitterise directory.

    $ bin/setup

Run Twitterise.

    $ bin/twitterise

In order to automate the use of Twitterise is a good idea to run once per day.
To achieve this, insert a new line in crontab, e.g. every day at 10:00 AM.

    $ crontab -e

    0 10 * * * bin/twitterise


[1]: https://dev.twitter.com/rest/public/rate-limiting
[2]: https://support.twitter.com/articles/66885-i-can-t-follow-people-follow-limits
[3]: https://apps.twitter.com/
