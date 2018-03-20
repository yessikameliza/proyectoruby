class IntegrantsController < ApplicationController
  before_action :set_integrant, only: [:show, :edit, :update, :destroy]

  # GET /integrants
  # GET /integrants.json
  def index
    @project = Project.find(params[:project_id])
    @integrants = User.all
  end

  # GET /integrants/1
  # GET /integrants/1.json
  def show
    @project = @integrant.project
  end

  # GET /integrants/new
  def new
    @project = Project.find(params[:project_id])
    @integrant = User.new
  end

  # GET /integrants/1/edit
  def edit
    @project = @integrant.project
  end

  # POST /integrants
  # POST /integrants.json
  def create
    @integrant = User.new(integrant_params)
    @integrant.project_id = params[:project_id]
    respond_to do |format|
      if @integrant.save
        format.html { redirect_to @integrant, notice: 'Integrant was successfully created.' }
        format.json { render :show, status: :created, location: @integrant }
      else
        format.html { render :new }
        format.json { render json: @integrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /integrants/1
  # PATCH/PUT /integrants/1.json
  def update
    respond_to do |format|
      if @integrant.update(integrant_params)
        format.html { redirect_to @integrant, notice: 'Integrant was successfully updated.' }
        format.json { render :show, status: :ok, location: @integrant }
      else
        format.html { render :edit }
        format.json { render json: @integrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /integrants/1
  # DELETE /integrants/1.json
  def destroy
     @project= @task.project_id
    @integrant.destroy
    redirect_to integrants_path(project_id: @project)
    flash[:notice] = 'Task was successfully destroyed.'

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_integrant
      @integrant = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def integrant_params
      params.require(:integrant).permit(:email, :encrypted_password)
    end
end