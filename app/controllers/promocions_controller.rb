class PromocionsController < ApplicationController
  # GET /promocions
  # GET /promocions.json
   load_and_authorize_resource
  def index
    @promocions = Promocion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @promocions }
    end
  end

  # GET /promocions/1
  # GET /promocions/1.json
  def show
    @promocion = Promocion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @promocion }
    end
  end

  # GET /promocions/new
  # GET /promocions/new.json
  def new
    @promocion = Promocion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @promocion }
    end
  end

  # GET /promocions/1/edit
  def edit
    @promocion = Promocion.find(params[:id])
  end

  # POST /promocions
  # POST /promocions.json
  def create
    @promocion = Promocion.new(params[:promocion])

    respond_to do |format|
      if @promocion.save
        format.html { redirect_to @promocion, notice: 'Promocion was successfully created.' }
        format.json { render json: @promocion, status: :created, location: @promocion }
      else
        format.html { render action: "new" }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /promocions/1
  # PUT /promocions/1.json
  def update
    @promocion = Promocion.find(params[:id])

    respond_to do |format|
      if @promocion.update_attributes(params[:promocion])
        format.html { redirect_to @promocion, notice: 'Promocion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promocions/1
  # DELETE /promocions/1.json
  def destroy
    @promocion = Promocion.find(params[:id])
    @promocion.destroy

    respond_to do |format|
      format.html { redirect_to promocions_url }
      format.json { head :no_content }
    end
  end
end
