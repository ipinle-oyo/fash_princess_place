class WomenStoresController < ApplicationController
  before_action :set_women_store, only: [:show, :edit, :update, :destroy]

  # GET /women_stores
  # GET /women_stores.json
  def index
    @women_stores = WomenStore.all
  end

  # GET /women_stores/1
  # GET /women_stores/1.json
  def show
  end

  # GET /women_stores/new
  def new
    @women_store = WomenStore.new
  end

  # GET /women_stores/1/edit
  def edit
  end

  # POST /women_stores
  # POST /women_stores.json
  def create
    @women_store = WomenStore.new(women_store_params)

    respond_to do |format|
      if @women_store.save
        format.html { redirect_to @women_store, notice: 'Women store was successfully created.' }
        format.json { render :show, status: :created, location: @women_store }
      else
        format.html { render :new }
        format.json { render json: @women_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /women_stores/1
  # PATCH/PUT /women_stores/1.json
  def update
    respond_to do |format|
      if @women_store.update(women_store_params)
        format.html { redirect_to @women_store, notice: 'Women store was successfully updated.' }
        format.json { render :show, status: :ok, location: @women_store }
      else
        format.html { render :edit }
        format.json { render json: @women_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /women_stores/1
  # DELETE /women_stores/1.json
  def destroy
    @women_store.destroy
    respond_to do |format|
      format.html { redirect_to women_stores_url, notice: 'Women store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_women_store
      @women_store = WomenStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def women_store_params
      params.require(:women_store).permit(:item_name, :image)
    end
end
