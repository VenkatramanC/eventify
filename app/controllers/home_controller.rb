class HomeController < ApplicationController

  skip_before_filter :Authenticate_user!
  
  def land
  end
end
