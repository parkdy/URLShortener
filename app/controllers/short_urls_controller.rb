class ShortUrlsController < ApplicationController
  def new
  	@short_url = ShortUrl.new
  end

  def create
  	@short_url = ShortUrl.new(long_url_param)
  	if @short_url.save
  		short_url_string ="#{request.protocol}#{request.host_with_port}/#{@short_url.id}!"
  		flash[:success] = "#{@short_url.long_url} shortened to #{short_url_string}!"
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def show
  	@short_url = ShortUrl.find(params[:id])
  	redirect_to @short_url.long_url
  end

  def index
  	@short_urls = ShortUrl.all
  end

  def destroy
  	@short_url = ShortUrl.find_by(id: params[:id])
  	if @short_url.destroy!
  		flash[:success] = "Deleted #{@short_url.long_url}!"
  	end
  	redirect_to root_url
  end

  private
  	# strong parameters
  	def long_url_param
  		params.require(:short_url).permit(:long_url)
  	end
end
