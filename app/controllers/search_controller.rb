class SearchController < ApplicationController

  def index
    binding.pry
    @result = NrelService.new.search(params['search'])
  end

end
