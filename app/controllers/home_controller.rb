class HomeController < ApplicationController
	
  def index
  	if user_signed_in? 
	redirect_to gossips_path 
 end 
  end

  def private
  end
end
