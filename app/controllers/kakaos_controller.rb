class KakaosController < ApplicationController
  def show
    @kakao=Kakao.find(params[:id])
  end
end
