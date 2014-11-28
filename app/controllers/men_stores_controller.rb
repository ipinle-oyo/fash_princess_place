class MenStoresController < ApplicationController
  before_action :set_men_store, only: [:show, :edit, :update, :destroy]

  # GET /men_stores
  # GET /men_stores.json
  def index
    @men_stores = MenStore.search_for(params[:q]).order("created_at DESC")
  end

  # GET /men_stores/1
  # GET /men_stores/1.json
  def show
  end

  # GET /men_stores/new
  def new
    @men_store = MenStore.new
  end

  # GET /men_stores/1/edit
  def edit
  end

  # POST /men_stores
  # POST /men_stores.json
  def create
    @men_store = MenStore.new(men_store_params)

    respond_to do |format|
      if @men_store.save
        format.html { redirect_to @men_store, notice: 'Men store was successfully created.' }
        format.json { render :show, status: :created, location: @men_store }
      else
        format.html { render :new }
        format.json { render json: @men_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /men_stores/1
  # PATCH/PUT /men_stores/1.json
  def update
    respond_to do |format|
      if @men_store.update(men_store_params)
        format.html { redirect_to @men_store, notice: 'Men store was successfully updated.' }
        format.json { render :show, status: :ok, location: @men_store }
      else
        format.html { render :edit }
        format.json { render json: @men_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /men_stores/1
  # DELETE /men_stores/1.json
  def destroy
    @men_store.destroy
    respond_to do |format|
      format.html { redirect_to men_stores_url, notice: 'Men store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_men_store
      @men_store = MenStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def men_store_params
      params.require(:men_store).permit(:item_name, :image)
    end
end
