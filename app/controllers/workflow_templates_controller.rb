class WorkflowTemplatesController < ApplicationController
  before_action :set_workflow_template, only: [:show, :edit, :update, :destroy]

  # GET /workflow_templates
  # GET /workflow_templates.json
  def index
    @workflow_templates = WorkflowTemplate.all
  end

  # GET /workflow_templates/1
  # GET /workflow_templates/1.json
  def show
  end

  # GET /workflow_templates/new
  def new
    @workflow_template = WorkflowTemplate.new
  end

  # GET /workflow_templates/1/edit
  def edit
  end

  # POST /workflow_templates
  # POST /workflow_templates.json
  def create
    @workflow_template = WorkflowTemplate.new(workflow_template_params)

    respond_to do |format|
      if @workflow_template.save
        format.html { redirect_to @workflow_template, notice: 'Workflow template was successfully created.' }
        format.json { render :show, status: :created, location: @workflow_template }
      else
        format.html { render :new }
        format.json { render json: @workflow_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workflow_templates/1
  # PATCH/PUT /workflow_templates/1.json
  def update
    respond_to do |format|
      if @workflow_template.update(workflow_template_params)
        format.html { redirect_to @workflow_template, notice: 'Workflow template was successfully updated.' }
        format.json { render :show, status: :ok, location: @workflow_template }
      else
        format.html { render :edit }
        format.json { render json: @workflow_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workflow_templates/1
  # DELETE /workflow_templates/1.json
  def destroy
    @workflow_template.destroy
    respond_to do |format|
      format.html { redirect_to workflow_templates_url, notice: 'Workflow template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workflow_template
      @workflow_template = WorkflowTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workflow_template_params
      params.require(:workflow_template).permit(:name, :workflow_template_id)
    end
end
