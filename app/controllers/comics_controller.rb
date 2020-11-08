class ComicsController < ApplicationController
  def index
    @comics=Comic.all
    @daums=Daum.all
    @kakaos=Kakao.all
    @platforms=Platform.all
  end

  def show
    @comic=Comic.find(params[:id])

  end


end
