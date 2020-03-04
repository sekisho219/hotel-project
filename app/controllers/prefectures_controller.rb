class PrefecturesController < ApplicationController
	def index
      @prefectures = Prefecture.all
    end

    def show
       @prefecture = Prefecture.find(params[:id])
       @hotels = @prefecture.hotels.all
    end

    def prefecture_params
       params.require(:prefecture).permit(:name, :picture,:descripition)
    end
end
