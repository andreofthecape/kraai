# Kraai

Api wrapper for stackoverflow.

## Installation

Add this line to your application's Gemfile:

    gem 'kraai'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kraai

## Usage

Create a new kraai object by calling Kraai::StackExchange.new
This will create the object with several default values that can be overwritten at call time: 
	site = "stackoverflow"
	page=1
	sort="activity"
	order="desc"

You can now call several methods on this now object:

.questions (All questions)
.user_questions(user) (All questions for given user)
.user_answers(user) (All answers for given user))
.unanswered(tagged) (Return 30 questions with given tag with no accepted answer)
.noanswers(tagged) (Return 30 questions with given tag with no answers)
.users (Return users of site)
.sites (Return list of StackExchange sites)

## Contributing

1. Fork it ( http://github.com/<my-github-username>/kraai/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
