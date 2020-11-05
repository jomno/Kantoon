class DramasController < ApplicationController
    def index
        
    if params.has_key?(:category)
        @category=Category.find_by(name: params[:category])
        @dramas = Drama.where(category: @category)
      else
      @dramas = Drama.all
      end
  
    end
end
