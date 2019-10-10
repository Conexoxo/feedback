class SessionsController < ApplicationController
  def before_login
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end
  
  def after_login
    session[:previous_url] || root_path
  end
end