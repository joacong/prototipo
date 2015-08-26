class ActiveWorkflowStepsController < ApplicationController
  before_action :set_active_workflow_step, only: [:show, :edit, :update, :destroy]

  # GET /active_workflow_steps
  # GET /active_workflow_steps.json
  def index
    @active_workflow_steps = ActiveWorkflowStep.all
  end

  # GET /active_workflow_steps/1
  # GET /active_workflow_steps/1.json
  def show
  end

  # GET /active_workflow_steps/new
  def new
    @active_workflow_step = ActiveWorkflowStep.new
  end

  # GET /active_workflow_steps/1/edit
  def edit
  end

  # POST /active_workflow_steps
  # POST /active_workflow_steps.json
  def create
    @active_workflow_step = ActiveWorkflowStep.new(active_workflow_step_params)

    respond_to do |format|
      if @active_workflow_step.save
        format.html { redirect_to @active_workflow_step, notice: 'Active workflow step was successfully created.' }
        format.json { render :show, status: :created, location: @active_workflow_step }
      else
        format.html { render :new }
        format.json { render json: @active_workflow_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_workflow_steps/1
  # PATCH/PUT /active_workflow_steps/1.json
  def update
    respond_to do |format|
      if @active_workflow_step.update(active_workflow_step_params)
        format.html { redirect_to @active_workflow_step, notice: 'Active workflow step was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_workflow_step }
      else
        format.html { render :edit }
        format.json { render json: @active_workflow_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_workflow_steps/1
  # DELETE /active_workflow_steps/1.json
  def destroy
    @active_workflow_step.destroy
    respond_to do |format|
      format.html { redirect_to active_workflow_steps_url, notice: 'Active workflow step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_workflow_step
      @active_workflow_step = ActiveWorkflowStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_workflow_step_params
      params.require(:active_workflow_step).permit(:number, :workflow_template_id, :active_workflow_id)
    end
end
