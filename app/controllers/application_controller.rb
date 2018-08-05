class ApplicationController < ActionController::Base
    
    helper_method :current_company
    attr_reader :current_company

    def set_current_company(subdomain)
        debugger
        @current_company = Company.find_by(subdomain: subdomain)
    end

    def authenticate_user!
        debugger
        @current_company.users(current_user)
    end

end
