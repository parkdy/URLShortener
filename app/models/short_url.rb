class ShortUrl < ActiveRecord::Base
	validates :long_url, presence: true, uniqueness: true # Validate URL to shorten is present and unique
end
