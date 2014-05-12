require 'spec_helper'
# require_relative '../lib/kraai'

describe Kraai::StackExchange do

	describe "default options get set on .new" do
		
		before { @response = Kraai::StackExchange.new }
		
		it "should set site" do
			@response.site.should eq('stackoverflow')
		end

		it "should set page" do
			@response.page.should eq(1)
		end

		it "should set order" do
			@response.order.should eq("desc")
		end

		it "should set sort" do
			@response.sort.should eq("activity")
		end

	end

	describe "default options get set on .new" do
		
		before { @response = Kraai::StackExchange.new }
		
		it "should set site" do
			@response.unanswered("ruby").tagged.should eq("ruby")
		end
	end
end