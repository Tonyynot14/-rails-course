class ProtectedController < ApplicationController
      #makes them log in if they haven't
      before_action :authenticate_user!
    
end
