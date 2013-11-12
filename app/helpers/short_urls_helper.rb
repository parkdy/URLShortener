module ShortUrlsHelper
	# Create url from ShortUrl object without protocol
	def url_string(short_url)
		"#{request.host_with_port}/#{short_url.id}"
	end

	# Create full url from ShortUrl object with protocol
	def full_url_string(short_url)
		"#{request.protocol}#{url_string(short_url)}"
	end
end
