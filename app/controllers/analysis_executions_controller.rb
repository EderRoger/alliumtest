class AnalysisExecutionsController < ApplicationController
  before_action :set_analysis_execution, only: [:show, :edit, :update, :destroy]

  def index
    @analysis_executions = AnalysisExecution.all
  end

  def new
    @analysis_execution = AnalysisExecution.new
    @onions = {}
  end

  def get_onions_from_analysis
    @analysis_execution = AnalysisExecution.new
    #@onions = Onion.find_all_by_analysis_id(params[:id])
    @onions = []
    @groups = OnionGroup.where(:analysis_id => params[:id])
    @groups.map { |group| @onions << Onion.where(:onion_group_id => group.id) }

    render :partial => "table_onions", :locals => {:t => @onions}

  end

  def show

  end

  def edit
  end

  def create
    @analysis_execution = AnalysisExecution.new(analysis_execution_params)

    respond_to do |format|
      if @analysis_execution.save
        format.html { redirect_to @analysis_execution, notice: 'Execução criada com sucesso.' }
        format.json { render action: 'index', status: :created, location: @analysis_execution }
      else
        format.html { render action: 'new' }
        format.json { render json: @analysis_execution.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @analysis_execution.update(analysis_execution_params)
        format.html { redirect_to @analysis_execution, notice: 'Execução atualizada com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @analysis_execution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_executions/1
  # DELETE /register_executions/1.json
  def destroy
    @analysis_execution.destroy
    respond_to do |format|
      format.html { redirect_to analysis_executions_url }
      format.json { head :no_content }
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_analysis_execution
    @analysis_execution = AnalysisExecution.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def analysis_execution_params
    params.require(:analysis_execution).permit(:duration, :analysis_id)
  end

end
