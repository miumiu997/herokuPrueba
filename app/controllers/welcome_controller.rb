class WelcomeController < ApplicationController
  def index 
  	userThing = current_user
    if userThing == nil 
      Rails.logger.debug('fail')
    else 
      Rails.logger.debug(current_user.name)
    end
  end
end
