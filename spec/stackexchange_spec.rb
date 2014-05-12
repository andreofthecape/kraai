require 'spec_helper'
require 'vcr'
# require_relative '../lib/kraai'

describe Kraai::StackExchange do

	let(:response) { Kraai::StackExchange.new }

	describe "default options get set on .new" do
		
		it "should set site" do
			response.site.should eq('stackoverflow')
		end

		it "should set page" do
			response.page.should eq(1)
		end

		it "should set order" do
			response.order.should eq("desc")
		end

		it "should set sort" do
			response.sort.should eq("activity")
		end

	end

	describe ".unanswered" do
		
		it "should respond ok" do
			VCR.use_cassette 'stackexchange/unanswered' do
				response.unanswered("ruby").response.code.should eq('200')
			end
			
		end
		
		it "should set tag" do
			VCR.use_cassette 'stackexchange/unanswered' do
				response.unanswered("ruby")
				response.tagged.should eq("ruby")
			end
			
		end
	end

	describe ".noanswers" do
		
		it "should respond ok" do
			VCR.use_cassette 'stackexchange/noanswers' do
				response.noanswers("ruby").response.code.should eq('200')
			end
			
		end
		
		it "should set tag" do
			VCR.use_cassette 'stackexchange/noanswers' do
				response.noanswers("ruby")
				response.tagged.should eq("ruby")
			end
			
		end
	end

	describe ".user_questions" do
		
		it "should respond ok" do
			VCR.use_cassette 'stackexchange/user_questions' do
				response.user_questions("1397997").response.code.should eq('200')
			end
			
		end
		
		it "should set user" do
			VCR.use_cassette 'stackexchange/user_questions' do
				response.user_questions("1397997")
				response.user.should eq("1397997")
			end
			
		end
	end

	describe ".user_answers" do
		
		it "should respond ok" do
			VCR.use_cassette 'stackexchange/user_answers' do
				response.user_answers("1397997").response.code.should eq('200')
			end
			
		end
		
		it "should set user" do
			VCR.use_cassette 'stackexchange/user_answers' do
				response.user_answers("1397997")
				response.user.should eq("1397997")
			end
			
		end
	end
end