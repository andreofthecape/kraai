# Kraai [![Build Status](https://secure.travis-ci.org/andreofthecape/kraai.png)](https://secure.travis-ci.org/andreofthecape/kraai.png)
Ruby wrapper for StackExchange Api.

## Installation

Add this line to your application's Gemfile:

    gem 'kraai'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kraai

## Usage

Create a new kraai object by calling:

    @response = Kraai::StackExchange.new

This will create the object with several default values that can be overwritten at call time, eg:

    site = "stackoverflow", page = 1, sort = "activity", order = "desc"

You can now call several methods on this new object:

    @response.user_questions(user)

Returns 30 questions for given user. 

    @response.user_answers(user)

Returns 30 answers for given user.

    @response.unanswered(tagged)
Returns 30 questions with given tag with no accepted answer from the Stackoverflow site.

    @response.noanswers(tagged)
Returns 30 questions with given tag with no answers from the Stackoverflow site.

## Example

    @response = Kraai::StackExchange.new(site="programmers")
    @response.unanswered("ruby")

Returns 30 unanswered questions tagged ruby from the programmers site

## Contributing

1. Fork it ( http://github.com/<my-github-username>/kraai/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
