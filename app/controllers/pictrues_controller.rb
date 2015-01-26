class PictruesController < ApplicationController

  def index
    @pictrues = Pictrue.all
  end

  def img_upload
    respond_to do |format|
      format.html {render layout: false}
    end
  end

  def create
    @pictrue = Pictrue.new(pic: params[:pic])
    if @pictrue.save!
      respond_to do |format|
        format.json {render json: @pictrue}
      end
    end
  end

  def destroy
    @pictrue = Pictrue.find(params[:id])
    if @pictrue.destroy
      respond_to do |format|
        format.json {render json: {status: 'ok', code: 200}}
      end
    end
  end

  def destroy_all
    @pictures = Pictrue.where(id: params[:pic])
    if @pictures.destroy_all
      redirect_to pictrues_url
    end
  end

  private
  def pictrue_params
    params.require(:pictures).permit(:pic)
  end

end
