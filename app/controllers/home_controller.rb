class HomeController < ApplicationController
  def index
    @productos = ScrapperResult.select(:brand, :glosa)
    
    #@expenses = ScrapperResult.where(brand:"Brother", site_captures_id:3, glosa:"DR820 Drum Cartridge").collect(&:updated_at)
    @expenses = ScrapperResult
      
    if params[:site_captures_id].present?
      @expenses = @expenses.where(site_captures_id: params[:site_captures_id])
    else
      @expenses = @expenses.where(site_captures_id: @expenses.first.site_captures_id)
    end

    if params[:brand].present?
      @expenses = @expenses.where("brand ILIKE ?", "%#{params[:brand]}%")
    else
      @expenses = @expenses.where("brand ILIKE ?", "%#{@expenses.first.brand}%")
    end

    if params[:glosa].present?
      @expenses = @expenses.where("glosa ILIKE ?", "%#{params[:glosa]}%")
    else
      @expenses = @expenses.where("glosa ILIKE ?", "%#{@expenses.first.glosa}%")
    end

    @expensesX = @expenses.select(:updated_at)
    @expensesY = @expenses.collect(&:sale)

    cantidad = @expenses.count
    @b = Array.new(cantidad)

    cantidad.times do |i|
      @b[i] = @expensesX[i][:updated_at].strftime("%d/%m")
    end

    @data_keys = @b
    @data_values = @expensesY

  end

  def list
  end

  private
    def person_params
      params.require(:scrapper_results).permit(:site_captures_id, :glosa, :brand)
    end

end