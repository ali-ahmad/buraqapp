class Admin::NaatsController < ApplicationController



  def index
    query = params[:query].presence
    @naats = Naat.search_by_full_name(query)

    @naats = if params[:query].present?
    Naat.search_by_full_name(query)
    else
      Naat.paginate(:page => params[:page], :per_page =>1 )
    end

  end
  
  def new
    @naat = Naat.new
  end

  def create
    @naat = Naat.new(naat_params)
      if @naat.save
        redirect_to edit_admin_naat_path(@naat)
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
      redirect_to admin_naats_path
    end
  end
  def update
    @naat = Naat.find params[:id]
    if @naat.update(naat_params)
      flash[:notice] = 'The User is successfully updated!'
      redirect_to admin_naats_path
    else
      flash[:error] = @naat.errors.full_messages[0]
        redirect_to admin_naats_path
    end
  end

  def naat_params
    params.require(:naat).permit(:large_photo, :photo, :title, :writername, :videolink, :audiolink, :description,
                                 :webSite, naatlyrics_attributes: [ :id, :url, :title, :photo, :language_id, :_destroy])
  end

end
