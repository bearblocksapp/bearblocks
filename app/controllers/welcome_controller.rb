class WelcomeController < ApplicationController
  before_action :get_all_subdomain

  def index
    if request.subdomain.present? && @subdomains.include?(request.subdomain)
      # render text: '', layout: 'application'
      render json: "Valid Subdomain (Welcome) Changed"
    else
      render json: "Invalid-Subdomain (Welcome)"
    end
  end

  def check_subdomain
    if request.subdomain.present? && @subdomains.include?(request.subdomain)
      render body: nil, status: 200
    else
      render body: nil, status: 301
    end
  end


  private
  def get_all_subdomain
    @subdomains = Company.all.pluck(:subdomain)
  end
end
