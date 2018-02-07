class SearchController < ApplicationController

  def index
    @result = NrelService.new(params['search'])
  end

end
