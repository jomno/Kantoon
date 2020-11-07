class BarsController < ApplicationController
    def index
        @bars=Bar.all
        @pies=Pie.all
        @Platforms=Platform.all
        
    end
end
