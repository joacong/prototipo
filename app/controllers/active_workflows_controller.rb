class ActiveWorkflowsController < ApplicationController
  before_action :set_active_workflow, only: [:show, :edit, :update, :destroy]

  # GET /active_workflows
  # GET /active_workflows.json
  def index
    @active_workflows = ActiveWorkflow.all
  end

  # GET /active_workflows/1
  # GET /active_workflows/1.json
  def show
  end

  # GET /active_workflows/new
  def new
    @active_workflow = ActiveWorkflow.new
  end

  # GET /active_workflows/1/edit
  def edit
  end

  # POST /active_workflows
  # POST /active_workflows.json
  def create
    @active_workflow = ActiveWorkflow.new(active_workflow_params)

    respond_to do |format|
      if @active_workflow.save
        format.html { redirect_to @active_workflow, notice: 'Active workflow was successfully created.' }
        format.json { render :show, status: :created, location: @active_workflow }
      else
        format.html { render :new }
        format.json { render json: @active_workflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_workflows/1
  # PATCH/PUT /active_workflows/1.json
  def update
    respond_to do |format|
      if @active_workflow.update(active_workflow_params)
        format.html { redirect_to @active_workflow, notice: 'Active workflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_workflow }
      else
        format.html { render :edit }
        format.json { render json: @active_workflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_workflows/1
  # DELETE /active_workflows/1.json
  def destroy
    @active_workflow.destroy
    respond_to do |format|
      format.html { redirect_to active_workflows_url, notice: 'Active workflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_workflow
      @active_workflow = ActiveWorkflow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_workflow_params
      params.require(:active_workflow).permit(:name)
    end
end
