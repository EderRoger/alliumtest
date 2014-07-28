class RegisterExecutionsController < ApplicationController
  before_action :set_register_execution, only: [:show, :edit, :update, :destroy]

  # GET /register_executions
  # GET /register_executions.json
  def index
    # @register_executions = RegisterExecution.all(:order_by => 'allium_cepa_id')
    @register_executions = RegisterExecution.all.order( :day_number , onion_id: :asc)
    @register_execution = RegisterExecution.new
    @days = []
    @onion = Onion.new
  end

  # GET /register_executions/1
  # GET /register_executions/1.json
  def show
  end

  # GET /register_executions/new
  def new
    @register_execution = RegisterExecution.new
  end

  # GET /register_executions/1/edit
  def edit
  end

  # POST /register_executions
  # POST /register_executions.json
  def create
    @register_execution = RegisterExecution.new(register_execution_params)

    respond_to do |format|
      if @register_execution.save

        root = Root.new
        root.size =  register_execution_params['root_size']
        root.onion_id = register_execution_params['onion_id']
        if root.save
          root_register_execution = RootRegisterExecution.new
          root_register_execution.register_execution_id =  @register_execution.id
          root_register_execution.root_id = root.id
          root_register_execution.save
        end

        format.html { redirect_to @register_execution, notice: 'Register execution was successfully created.' }
        format.json { render action: 'show', status: :created, location: @register_execution }
      else

        register_execution = params[:register_execution]
        analysis_execution = AnalysisExecution.find_by_id(register_execution['analysis_execution_id'])
        #analysis = Analysis.find_by_id(analysis_execution.analysis.id)
        analysis = Analysis.find_by_id(register_execution[:analysis_id])

        @analysis_execution_id = analysis_execution.id
        @analysis_id =  analysis.id
        @analysis_name = analysis.name
        @groups = OnionGroup.where(:analysis_id => analysis.id)
        @onions = [] #Onion.find_all_by_analysis_id()

        format.html { render action: 'new' }
        format.json { render json: @register_execution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /register_executions/1
  # PATCH/PUT /register_executions/1.json
  def update
    respond_to do |format|
      if @register_execution.update(register_execution_params)
        format.html { redirect_to @register_execution, notice: 'Register execution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @register_execution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /register_executions/1
  # DELETE /register_executions/1.json
  def destroy
    @register_execution.destroy
    respond_to do |format|
      format.html { redirect_to register_executions_url }
      format.json { head :no_content }
    end
  end

  def register
    @register_execution = RegisterExecution.new
    analysis_execution = AnalysisExecution.find_by_id(params[:analysis_execution_id])
    analysis = Analysis.find_by_id(analysis_execution.analysis.id)

    @analysis_execution_id = analysis_execution.id
    @analysis_id =  analysis.id
    @analysis_name = analysis.name
    @groups = OnionGroup.where(:analysis_id => analysis.id)
    @onions = [] #Onion.find_all_by_analysis_id()

    render 'new'
  end

  def get_onions_by_group
    @onions = Onion.where(:onion_group_id => params[:id])
    render :json => @onions.map{|c| [c.id, c.name]}
  end

  def get_group_by_analysis
    @groups = OnionGroup.where(:analysis_id => params[:id])
    render :json => @groups.map{|c| [c.id, c.name]}
  end

  def report
    @register_execution = RegisterExecution.new
    @onion = Onion.find_by_id(params[:onion_id])
    @days = RegisterExecution.all.where(:onion_id => @onion.id).map{ |re| re.day_number }.uniq
    @register_executions = RegisterExecution.all.where(:onion_id => @onion.id).order( :day_number , onion_id: :asc)
  end

  def report_group
    @register_execution = RegisterExecution.new
    @days = RegisterExecution.all.map{ |re| re.day_number }.uniq
    @onion_group = OnionGroup.find_by_id(params[:group_id])
    onions_group = Onion.where(:onion_group_id => @onion_group.id)

    @onions = RegisterExecution.all.where(:onion_id => onions_group).map { |re| re.onion_id }.uniq

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register_execution
      @register_execution = RegisterExecution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_execution_params
      params.require(:register_execution).permit(:day_number, :analysis_execution_id, :onion_id, :root_size)
    end
end
