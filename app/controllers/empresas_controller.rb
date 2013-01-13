class EmpresasController < ApplicationController
  # GET /empresas
  # GET /empresas.json
  load_and_authorize_resource
  
  def index
    @empresas = Empresa.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @empresas }
    end
  end
  def acuerdo
    
  end
  def presentacion
  end
  def buscamenu
    idcupon = params[ :itx]
    
    @cupons = Cupon.find(:all, :conditions => {:id_supercategoria =>" #{idcupon}"})
    
    @promocions = Promocion.find(:all, :conditions => {:id_supercategoria =>" #{idcupon}"})
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cupons }
      format.json { render json: @promocions }
    end
  end
  
  def buscar
    if  params[:search].present?
      @empresas = Empresa.find(:all, :conditions => ["descripcion like ? ", "%"+params[:search]+"%"])
      if @empresas.count == 0
        respond_to do |format|
          format.html { redirect_to :controller => "empresas", :action=>"buscar", notice:"No se han encontrado resultados.." }
          format.json { render json: @empresas }
        end
      end
    else
         @empresas = Empresa.all
     # @empresas= Empresa.paginate(:page => params[:page], :per_page => 10)
    end
    end
  
  def buscapromo
    idempresa = params[ :bp]
    @promocions = Promocion.find(:all, :conditions => {:id_empresa =>" #{idempresa}"})
    respond_to do |format|
      format.html # index.html.erb
      
      format.json { render json: @promocions }
    end
  end
  def buscacupo
    idempresa = params[ :bc]
    @cupons = Cupon.find(:all, :conditions => {:id_empresa =>" #{idempresa}"})
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cupons }
      
    end
  end
  
  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @empresa = Empresa.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @empresa }
    end
  end
  
  # GET /empresas/new
  # GET /empresas/new.json
  def new
    @empresa = Empresa.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @empresa }
    end
  end
  
  # GET /empresas/1/edit
  def edit
    @empresa = Empresa.find(params[:id])
  end
  
  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(params[:empresa])
    
    respond_to do |format|
      if @empresa.save
        format.html { redirect_to @empresa, notice: 'Empresa creada.' }
        format.json { render json: @empresa, status: :created, location: @empresa }
      else
        format.html { render action: "new" }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PUT /empresas/1
  # PUT /empresas/1.json
  def update
    @empresa = Empresa.find(params[:id])
    
    respond_to do |format|
      if @empresa.update_attributes(params[:empresa])
        format.html { redirect_to @empresa, notice: 'Empresa actualizada.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end
  def activar
    @empresa = Empresa.find(params[:id])
    
    respond_to do |format|
      if @empresa.update_attributes(:estado=>"2")
        format.html { redirect_to @empresa, notice: 'Empresa activada.' }
        format.json { head :no_content }
      else
        format.html { redirect_to @empresa, notice: 'Ocurrio un error al activar.' }
        format.json { head :no_content }
      end
    end
  end
  
  def desactivar
    
    @empresa = Empresa.find(params[:id])
    
    respond_to do |format|
      if @empresa.update_attributes(:estado=>"1")
        format.html { redirect_to @empresa, notice: 'Empresa desactivada.' }
        format.json { head :no_content }
      else
        format.html { redirect_to @empresa, notice: 'Ocurrio un error al desactivar.' }
        format.json { head :no_content }
      end
    end
    end
  
  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa = Empresa.find(params[:id])
    @empresa.destroy
    
    respond_to do |format|
      format.html { redirect_to empresas_url }
      format.json { head :no_content }
    end
  end
  
  def newempresa
    @user = User.new
  end
  
  def createempresa
    @user = User.new(params[:user])
    # email = params[ :email]
    # password=params[ :password]
    #  password_confirmation=params[ :password_confirmation]
    
    #  @user = User.new(:email=> "#{email}", :password_digest => "#{password}" )
    
    if @user.save
      $emailuser=@user.email
      
      redirect_to :controller => "empresas", :action => "new" 
    else
      render "newempresa"
    end
  end
end
