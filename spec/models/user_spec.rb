require 'spec_helper'

describe User do
	describe "#full_name" do
		it "builds the full name" do
			user = build(:user)
			#user = User.new(first_name: "Donald", last_name: "Duck")

			expect(user.full_name).to eq "Donald Duck" #new way
		end

		it "builds the full name for someone with no last name" do
			user = build(:user, last_name: nil)
			user.full_name.should == "Donald"
		end
	end
end