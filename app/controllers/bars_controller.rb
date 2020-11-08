class BarsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @bars=Bar.all
        @pies=Pie.all
        @Platforms=Platform.all
        
    end
end
