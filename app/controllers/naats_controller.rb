class NaatsController < ApplicationController

  def index
    @naats = Naat.all
  end
  
  def new
    @naat = Naat.new
  end

  def create
    @naat = Naat.new(naat_params)
      if @naat.save
        redirect_to edit_naat_path(@naat)
      end
  end
  def show
    @naat = Naat.find(params[:id])
  end

  def edit
    @naat = Naat.find params[:id]
    @naat.naatlyrics.build
  end
  def destroy 
    @naat = Naat.find_by_id(params[:id])
    if @naat.destroy
      redirect_to naats_path
    end
  end
  def update
    @naat = Naat.find params[:id]

    if @naat.update(naat_params)
      flash[:notice] = 'The User is successfully updated!'
      redirect_to naats_path
    else
      flash[:error] = @naat.errors.full_messages[0]
        redirect_to naats_path
    end
  end


  def naat_params
    params.require(:naat).permit(:large_photo, :photo, :title, :writername, :videolink, :audiolink, :description,
                                 :webSite, naatlyrics_attributes: [ :id, :url, :title, :photo, :language_id, :_destroy])
  end
end
