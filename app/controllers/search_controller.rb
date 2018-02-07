class SearchController < ApplicationController

  def index
    @service = NrelService.new(params['q'])
  end

end
