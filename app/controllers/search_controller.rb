class SearchController < ApplicationController

  def index
    @service = NrelService.new(params['search'])
  end

end
