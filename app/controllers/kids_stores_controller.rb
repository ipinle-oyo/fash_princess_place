class KidsStoresController < ApplicationController
  before_action :set_kids_store, only: [:show, :edit, :update, :destroy]

  # GET /kids_stores
  # GET /kids_stores.json
  def index
    @kids_stores = KidsStore.search_for(params[:q]).order("created_at DESC")
  end

  # GET /kids_stores/1
  # GET /kids_stores/1.json
  def show
  end

  # GET /kids_stores/new
  def new
    @kids_store = KidsStore.new
  end

  # GET /kids_stores/1/edit
  def edit
  end

  # POST /kids_stores
  # POST /kids_stores.json
  def create
    @kids_store = KidsStore.new(kids_store_params)

    respond_to do |format|
      if @kids_store.save
        format.html { redirect_to @kids_store, notice: 'Kids store was successfully created.' }
        format.json { render :show, status: :created, location: @kids_store }
      else
        format.html { render :new }
        format.json { render json: @kids_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kids_stores/1
  # PATCH/PUT /kids_stores/1.json
  def update
    respond_to do |format|
      if @kids_store.update(kids_store_params)
        format.html { redirect_to @kids_store, notice: 'Kids store was successfully updated.' }
        format.json { render :show, status: :ok, location: @kids_store }
      else
        format.html { render :edit }
        format.json { render json: @kids_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kids_stores/1
  # DELETE /kids_stores/1.json
  def destroy
    @kids_store.destroy
    respond_to do |format|
      format.html { redirect_to kids_stores_url, notice: 'Kids store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kids_store
      @kids_store = KidsStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kids_store_params
      params.require(:kids_store).permit(:item_name, :image)
    end
end
