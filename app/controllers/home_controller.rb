class HomeController < ApplicationController
  layout "application_home"
  def index
    
    documents = ScrapperResult.last(50).reverse #lista home
    @list = ScrapperResult.last(5).reverse #lista home
    @productos = ScrapperResult.select(:brand, :name)
  end

  def detail
    filter = ScrapperResult.where(id:params[:id])
    @product = ScrapperResult.where(name:filter.first[:name], site_captures_id: filter.first[:site_captures_id])
    @list = @product
  end

  def show
    fdate = "#{params[:fdate]} 00:00:01"
    ldate = "#{params[:ldate]} 23:59:59"
    documents = ScrapperResult.all
    documents = documents.where("created_at between ?  and ?", fdate, ldate)
    documents = documents.where("name ilike '%#{params[:brand]}%'" )
    @list = documents.paginate(page: params[:page], per_page: 8) #lista buscar
  end

  private
    def person_params
      params.require(:scrapper_results).permit(:fdate, :ldate, :business, :brand)
    end

end