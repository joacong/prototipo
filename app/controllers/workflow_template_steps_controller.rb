class WorkflowTemplateStepsController < ApplicationController
  before_action :set_workflow_template_step, only: [:show, :edit, :update, :destroy]

  # GET /workflow_template_steps
  # GET /workflow_template_steps.json
  def index
    @workflow_template_steps = WorkflowTemplateStep.all
  end

  # GET /workflow_template_steps/1
  # GET /workflow_template_steps/1.json
  def show
  end

  # GET /workflow_template_steps/new
  def new
    @workflow_template_step = WorkflowTemplateStep.new
  end

  # GET /workflow_template_steps/1/edit
  def edit
  end

  # POST /workflow_template_steps
  # POST /workflow_template_steps.json
  def create
    @workflow_template_step = WorkflowTemplateStep.new(workflow_template_step_params)

    respond_to do |format|
      if @workflow_template_step.save
        format.html { redirect_to @workflow_template_step, notice: 'Workflow template step was successfully created.' }
        format.json { render :show, status: :created, location: @workflow_template_step }
      else
        format.html { render :new }
        format.json { render json: @workflow_template_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workflow_template_steps/1
  # PATCH/PUT /workflow_template_steps/1.json
  def update
    respond_to do |format|
      if @workflow_template_step.update(workflow_template_step_params)
        format.html { redirect_to @workflow_template_step, notice: 'Workflow template step was successfully updated.' }
        format.json { render :show, status: :ok, location: @workflow_template_step }
      else
        format.html { render :edit }
        format.json { render json: @workflow_template_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workflow_template_steps/1
  # DELETE /workflow_template_steps/1.json
  def destroy
    @workflow_template_step.destroy
    respond_to do |format|
      format.html { redirect_to workflow_template_steps_url, notice: 'Workflow template step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workflow_template_step
      @workflow_template_step = WorkflowTemplateStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workflow_template_step_params
      params.require(:workflow_template_step).permit(:workflow_template_step_id)
    end
end
