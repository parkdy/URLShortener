class ShortUrl < ActiveRecord::Base
	validates :long_url, presence: true # Validate URL to shorten isn't blank
	validate :long_url_has_scheme

	private

	def long_url_has_scheme
		unless self.long_url.include?('://') # Valid if it has a scheme
			errors[:long_url] << "must have a scheme (e.g. http://)"
		end
	end
end
