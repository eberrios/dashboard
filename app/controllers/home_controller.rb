class HomeController < ApplicationController
  def index
    @site_array = SiteCapture.all.map { |site| [site.name, site.id] }
    
    @brand = ScrapperResult.select(:brand).distinct { |brand| [brand.name, brand.id] }

    @list = ScrapperResult.last(5).reverse #lista home
    @productos = ScrapperResult.select(:brand, :glosa)

  end

  def detail
    filter = ScrapperResult.where(id:params[:id])


    @product = ScrapperResult.where(glosa:filter.first[:glosa], site_captures_id: filter.first[:site_captures_id])
    @list = @product
  end

  def show
    logger.debug("-------------------------------------------------------------------------------------------")
    logger.debug(params[:fdate])
    logger.debug(params[:ldate])
    logger.debug(params[:business])
    logger.debug(params[:brand])
    logger.debug("-------------------------------------------------------------------------------------------")

    @list = ScrapperResult.last(20).reverse #lista home
  end

  private
    def person_params
      params.require(:scrapper_results).permit(:site_captures_id, :glosa, :brand)
    end

end