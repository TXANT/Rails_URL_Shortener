class UrlController < ApplicationController
  layout 'url'
  def new
    @links = Url.find(:all)
    @link = Url.new
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @links = Url.find(:all)
    id = Url.returnId[0][:count]
    @link = Url.new(params[:link])
    @short_url = ("%d%d"%[rand(100), Time.now.to_i]).to_i.to_s(36)
    @short_url = Digest::MD5.hexdigest(@short_url)[2,6]
    @link[:id] = (id.to_i+1)
    @link[:short] = @short_url
    @link[:long] = (params[:link][:long]).to_s[0..6] != 'http://' && (params[:link][:long]).to_s[0..7] != 'https://'? ('http://'+(params[:link][:long]).to_s) : ((params[:link][:long]).to_s)
    @link.save
    respond_to do |format|
      format.html {redirect_to(:action => 'new')}
    end
  end
  
  def translate
    @long = Url.find(:all, :conditions => {:short => params[:short]})
    redirect_to @long[0][:long] 
  end
end
