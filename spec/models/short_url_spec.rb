require 'spec_helper'

describe ShortUrl do
	let(:short_url) { ShortUrl.new }
	subject { short_url }

	describe "with blank URL" do
		before { short_url.long_url = " " }
		it { should_not be_valid }
	end

	describe "with valid URL" do
		before { short_url.long_url = "http://www.google.com" }
		it { should be_valid }
	end
end
