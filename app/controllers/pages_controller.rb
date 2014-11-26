class PagesController < ApplicationController
  

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params[:page]
    end
end
