class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  before_action :set_locale

  protected
    def layout_by_resource
      return "devise" if devise_controller?
      "application"
    end

  private
    def extract_locale_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end

    def set_locale
      l = I18n.default_locale
      cl = cookies[:luagageonthego_locale].to_sym rescue nil
      return I18n.locale = cl if cl && I18n.available_locales.include?(cl)

      bl = extract_locale_from_accept_language_header.to_sym rescue nil
      l = bl if bl && I18n.available_locales.include?(bl)
      I18n.locale = cookies.permanent[:luagageonthego_locale] = l
    end
end
