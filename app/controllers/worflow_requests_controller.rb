class WorflowRequestsController < ApplicationController
  before_action :set_worflow_request, only: [:show, :edit, :update, :destroy]

  # GET /worflow_requests
  # GET /worflow_requests.json
  def index
    @worflow_requests = WorflowRequest.all
  end

  # GET /worflow_requests/1
  # GET /worflow_requests/1.json
  def show
  end

  # GET /worflow_requests/new
  def new
    @worflow_request = WorflowRequest.new
  end

  # GET /worflow_requests/1/edit
  def edit
  end

  # POST /worflow_requests
  # POST /worflow_requests.json
  def create
    @worflow_request = WorflowRequest.new(worflow_request_params)

    respond_to do |format|
      if @worflow_request.save
        format.html { redirect_to @worflow_request, notice: 'Worflow request was successfully created.' }
        format.json { render :show, status: :created, location: @worflow_request }
      else
        format.html { render :new }
        format.json { render json: @worflow_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worflow_requests/1
  # PATCH/PUT /worflow_requests/1.json
  def update
    respond_to do |format|
      if @worflow_request.update(worflow_request_params)
        format.html { redirect_to @worflow_request, notice: 'Worflow request was successfully updated.' }
        format.json { render :show, status: :ok, location: @worflow_request }
      else
        format.html { render :edit }
        format.json { render json: @worflow_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worflow_requests/1
  # DELETE /worflow_requests/1.json
  def destroy
    @worflow_request.destroy
    respond_to do |format|
      format.html { redirect_to worflow_requests_url, notice: 'Worflow request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worflow_request
      @worflow_request = WorflowRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worflow_request_params
      params.require(:worflow_request).permit(:user_id)
    end
end
