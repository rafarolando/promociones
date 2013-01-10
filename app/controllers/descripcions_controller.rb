class DescripcionsController < ApplicationController
  # GET /descripcions
  # GET /descripcions.json
   load_and_authorize_resource
  def index
    @descripcions = Descripcion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @descripcions }
    end
  end

  # GET /descripcions/1
  # GET /descripcions/1.json
  def show
    @descripcion = Descripcion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @descripcion }
    end
  end

  # GET /descripcions/new
  # GET /descripcions/new.json
  def new
    @descripcion = Descripcion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @descripcion }
    end
  end

  # GET /descripcions/1/edit
  def edit
    @descripcion = Descripcion.find(params[:id])
  end

  # POST /descripcions
  # POST /descripcions.json
  def create
    @descripcion = Descripcion.new(params[:descripcion])

    respond_to do |format|
      if @descripcion.save
        format.html { redirect_to @descripcion, notice: 'Descripcion was successfully created.' }
        format.json { render json: @descripcion, status: :created, location: @descripcion }
      else
        format.html { render action: "new" }
        format.json { render json: @descripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /descripcions/1
  # PUT /descripcions/1.json
  def update
    @descripcion = Descripcion.find(params[:id])

    respond_to do |format|
      if @descripcion.update_attributes(params[:descripcion])
        format.html { redirect_to @descripcion, notice: 'Descripcion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @descripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descripcions/1
  # DELETE /descripcions/1.json
  def destroy
    @descripcion = Descripcion.find(params[:id])
    @descripcion.destroy

    respond_to do |format|
      format.html { redirect_to descripcions_url }
      format.json { head :no_content }
    end
  end
end
