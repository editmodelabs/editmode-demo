class SiteController < ApplicationController

  before_filter :allow_iframe

  def home
  end

  def bc
  end

  def page
    begin
      if page_is_whitelisted?
    	render params[:page].to_sym, :layout => false
      end
    rescue => errors
      Rails.logger.info("e: #{errors}")
    end
  end

  def allow_iframe
    response.headers.delete 'X-Frame-Options'
  end

  private

  def page_is_whitelisted?
    true if whitelisted_pages.include?(params[:page])
  end

  def whitelisted_pages
    %w(home bc)
  end

end