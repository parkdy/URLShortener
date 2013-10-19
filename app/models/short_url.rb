class ShortUrl < ActiveRecord::Base
	validates :long_url, presence: true # Validate presence of URL to shorten
end
