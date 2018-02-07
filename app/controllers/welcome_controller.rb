class WelcomeController < ApplicationController
  def index
    @search = NrelService.new(params['search'])
  end
end
