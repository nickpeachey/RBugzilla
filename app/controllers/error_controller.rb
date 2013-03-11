class ErrorController < ApplicationController
  def error404
    render :layout => 'error_layout'

  end

  def errorgeneral
  end
end
