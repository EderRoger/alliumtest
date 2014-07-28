class RootsController < ApplicationController
  before_action :set_root, only: [:show, :edit, :update, :destroy]

  # GET /roots
  # GET /roots.json
  def index
    @roots = Root.all
  end

  # GET /roots/1
  # GET /roots/1.json
  def show
  end

  # GET /roots/new
  def new
    @root = Root.new
  end

  # GET /roots/1/edit
  def edit
  end

  # POST /roots
  # POST /roots.json
  def create
    @root = Root.new(root_params)

    respond_to do |format|
      if @root.save
        format.html { redirect_to @root, notice: 'Root was successfully created.' }
        format.json { render action: 'show', status: :created, location: @root }
      else
        format.html { render action: 'new' }
        format.json { render json: @root.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roots/1
  # PATCH/PUT /roots/1.json
  def update
    respond_to do |format|
      if @root.update(root_params)
        format.html { redirect_to @root, notice: 'Root was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @root.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roots/1
  # DELETE /roots/1.json
  def destroy
    @root.destroy
    respond_to do |format|
      format.html { redirect_to roots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_root
      @root = Root.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def root_params
      params.require(:root).permit(:size, :onion_id)
    end
end
