class SiteController < ApplicationController

  before_filter :allow_iframe

  def home
  end

  def allow_iframe
    response.headers.delete 'X-Frame-Options'
  end

end