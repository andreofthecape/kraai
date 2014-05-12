require "kraai/version"
require "httparty"
module Kraai

	class StackExchange
	  include HTTParty
	  attr_accessor :site, :page, :order, :sort, :tagged, :user
	  # Api Example
	  # HTTParty.get('https://api.stackexchange.com/2.1/users/1327379/answers?order=desc&sort=activity&site=stackoverflow')

	  base_uri 'api.stackexchange.com/2.2'

	  def initialize(site="stackoverflow", page=1, sort="activity", order="desc")
	    @options = { :query => {:site => site, :page => page, :sort => sort, :order => order} }
	  	@site = site
	  	@page = page
	  	@sort = sort
	  	@order = order
	  	
	  end

	  def questions
	    self.class.get("/questions", @options)
	  end

	  def user_questions(user)
	    @user = user
	    self.class.get("/users/#{user}/questions", @options)
	  end

	  def user_answers(user)
	    @user = user
	    self.class.get("/users/#{user}/answers", @options)
	  end


	  def unanswered(tagged)
	  	self.tagged = tagged
	  	@options[:query].merge! :tagged => tagged
  		self.class.get("/questions/unanswered", @options)
	  end

	  def noanswers(tagged)
	  	@tagged = tagged
	  	(@options[:query].merge! :tagged => tagged) if tagged
  		self.class.get("/questions/no-answers", @options)
	  end

	  def users
	    self.class.get("/users", @options)
	  end
	
	  def self.sites
	    HTTParty.get('https://api.stackexchange.com/2.2/sites')		
	  end


	end



	
end
