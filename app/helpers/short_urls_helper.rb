module ShortUrlsHelper
	# Create full url from ShortUrl object
	def url_string(short_url)
		"#{request.protocol}#{request.host_with_port}/#{short_url.id}"
	end
end
