class RootRegisterExecutionsController < ApplicationController
  before_action :set_root_register_execution, only: [:show, :edit, :update, :destroy]

  # GET /root_register_executions
  # GET /root_register_executions.json
  def index
    @root_register_executions = RootRegisterExecution.all
  end

  # GET /root_register_executions/1
  # GET /root_register_executions/1.json
  def show
  end

  # GET /root_register_executions/new
  def new
    @root_register_execution = RootRegisterExecution.new
  end

  # GET /root_register_executions/1/edit
  def edit
  end

  # POST /root_register_executions
  # POST /root_register_executions.json
  def create
    @root_register_execution = RootRegisterExecution.new(root_register_execution_params)

    respond_to do |format|
      if @root_register_execution.save
        format.html { redirect_to @root_register_execution, notice: 'Root register execution was successfully created.' }
        format.json { render action: 'show', status: :created, location: @root_register_execution }
      else
        format.html { render action: 'new' }
        format.json { render json: @root_register_execution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /root_register_executions/1
  # PATCH/PUT /root_register_executions/1.json
  def update
    respond_to do |format|
      if @root_register_execution.update(root_register_execution_params)
        format.html { redirect_to @root_register_execution, notice: 'Root register execution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @root_register_execution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /root_register_executions/1
  # DELETE /root_register_executions/1.json
  def destroy
    @root_register_execution.destroy
    respond_to do |format|
      format.html { redirect_to root_register_executions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_root_register_execution
      @root_register_execution = RootRegisterExecution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def root_register_execution_params
      params.require(:root_register_execution).permit(:register_execution_id, :root_id)
    end
end
