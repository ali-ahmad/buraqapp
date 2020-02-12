class NaatsController < ApplicationController
  def index
    query = params[:query].presence
    @naats = Naat.search_by_full_name(query)

    @naats = if params[:query].present?
    Naat.search_by_full_name(query)
    else
     	@naats = Naat.all
    end
    render layout: 'landing'
  end
  def show
    @naat = Naat.find(params[:id])
    @naats = Naat.all
    render layout: 'landing'
  end
end