class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  http_basic_authenticate_with :name => "matchmed", :password => "paris2303"

  def default_url_options
    { host: ENV['HOST'] || 'localhost:3000' }
  end

end
