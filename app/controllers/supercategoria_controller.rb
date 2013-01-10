class SupercategoriaController < ApplicationController
  # GET /supercategoria
  # GET /supercategoria.json
   load_and_authorize_resource
  def index
    @supercategoria = Supercategorium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supercategoria }
    end
  end

  # GET /supercategoria/1
  # GET /supercategoria/1.json
  def show
    @supercategorium = Supercategorium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supercategorium }
    end
  end

  # GET /supercategoria/new
  # GET /supercategoria/new.json
  def new
    @supercategorium = Supercategorium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supercategorium }
    end
  end

  # GET /supercategoria/1/edit
  def edit
    @supercategorium = Supercategorium.find(params[:id])
  end

  # POST /supercategoria
  # POST /supercategoria.json
  def create
    @supercategorium = Supercategorium.new(params[:supercategorium])

    respond_to do |format|
      if @supercategorium.save
        format.html { redirect_to @supercategorium, notice: 'Supercategorium was successfully created.' }
        format.json { render json: @supercategorium, status: :created, location: @supercategorium }
      else
        format.html { render action: "new" }
        format.json { render json: @supercategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supercategoria/1
  # PUT /supercategoria/1.json
  def update
    @supercategorium = Supercategorium.find(params[:id])

    respond_to do |format|
      if @supercategorium.update_attributes(params[:supercategorium])
        format.html { redirect_to @supercategorium, notice: 'Supercategorium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supercategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supercategoria/1
  # DELETE /supercategoria/1.json
  def destroy
    @supercategorium = Supercategorium.find(params[:id])
    @supercategorium.destroy

    respond_to do |format|
      format.html { redirect_to supercategoria_url }
      format.json { head :no_content }
    end
  end
end
