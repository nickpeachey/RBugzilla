class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :force_www!
  unless Rails.application.config.consider_all_requests_local
    rescue_from Exception, with: lambda { |exception| render_error 500, exception }
    rescue_from ActionController::RoutingError, ActionController::UnknownController, ::AbstractController::ActionNotFound, ActiveRecord::RecordNotFound, with: lambda { |exception| render_error 404, exception }
  end

  private
  def render_error(status, exception)
    respond_to do |format|
      format.html { render template: "error/error404", layout: 'layouts/error_layout', status: status }
      format.all { render nothing: true, status: status }
    end
  end

  protected

  def force_www!
    if Rails.env.production? and request.host[0..3] != "www."
      redirect_to "www.rbugzilla.com", :status => 301
    end
  end
end
