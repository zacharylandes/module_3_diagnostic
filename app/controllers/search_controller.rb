class SearchController < ApplicationController

  def index
    @service = NrelService.new(params['q']).result
  end

end
