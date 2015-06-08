require 'spec_helper'
module RspecTutorial
	describe Book do 

		before :each do
			@book = Book.new name: "Testbook"
		end

		describe "#new" do
			it 'takes one parameter and returns a Book object' do
			  expect(@book).to be_an_instance_of Book
		  end
		end

	end
end