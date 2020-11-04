class DaumsController < ApplicationController

    def show
      @daum=Daum.find(params[:id])
    end
  
  end
  