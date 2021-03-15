class RegistrationsController < Devise::SessionsController
    respond_to :json

    def create
      binding.pry
      super
    end

    def new
      binding.pry  
      super
    end

  end