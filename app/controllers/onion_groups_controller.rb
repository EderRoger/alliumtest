class OnionGroupsController < ApplicationController
  before_action :set_onion_group, only: [:show, :edit, :update, :destroy]

  # GET /onion_groups
  # GET /onion_groups.json
  def index
    @onion_groups = OnionGroup.all
  end

  # GET /onion_groups/1
  # GET /onion_groups/1.json
  def show
  end

  # GET /onion_groups/new
  def new
    @onion_group = OnionGroup.new
  end

  # GET /onion_groups/1/edit
  def edit
  end

  # POST /onion_groups
  # POST /onion_groups.json
  def create
    @onion_group = OnionGroup.new(onion_group_params)

    respond_to do |format|
      if @onion_group.save
        format.html { redirect_to @onion_group, notice: 'Onion group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @onion_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @onion_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onion_groups/1
  # PATCH/PUT /onion_groups/1.json
  def update
    respond_to do |format|
      if @onion_group.update(onion_group_params)
        format.html { redirect_to @onion_group, notice: 'Onion group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @onion_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onion_groups/1
  # DELETE /onion_groups/1.json
  def destroy
    @onion_group.destroy
    respond_to do |format|
      format.html { redirect_to onion_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onion_group
      @onion_group = OnionGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onion_group_params
      params.require(:onion_group).permit(:analysis_id, :name, :description)
    end
end
