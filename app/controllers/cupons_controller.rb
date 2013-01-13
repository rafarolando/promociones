class CuponsController < ApplicationController
  # GET /cupons
  # GET /cupons.json
  def index
    @cupons = Cupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cupons }
      format.pdf do

        pdf = Prawn::Document.new(:page_size => "LETTER", :page_layout => :portrait)

        pdf.image "public/images/fcupon.png", :width => 200

        pdf.text " "
        pdf.stroke_horizontal_rule
        pdf.move_down 20

        #data = [["NOMBRE", "DETALLE", "PRECIO", "Imagen", "QR"]]
        @cupons.each do |cupon|
          #data += [["sd", "asd", "asd", "asd", "prueba" ]]
          @empresa = Empresa.find(:all, :conditions => {:id => cupon.id_empresa})

          @empresa.each do |em|
            pdf.image "public/#{em.imagen}", :width => 100,  :at => [200, 720]

            @qr = RQRCode::QRCode.new("#{em.id}", :size => 4, :level => :h)
            png = @qr.to_img
            png.resize(190, 190).save("#{Rails.root}/public/uploads/empresa/imagen/#{em.id}/#{em.id}.png")
            pdf.image "#{Rails.root}/public/uploads/empresa/imagen/#{em.id}/#{em.id}.png", :width => 60,  :at => [180, 700]
            pdf.text_box "Direccion:"+em.direccion+"
            Horarios de atencion:"+em.horario,
                         :at => [80, 680],
                         :height => 100,
                         :width => 100, :size => 9
          end


          pdf.text_box ""+cupon.descripcion,
                       :at => [80, 710],
                       :height => 100,
                       :width => 100, :size => 9
          pdf.text_box "Valido de:"+cupon.fechaini.to_s+"
           hasta "+cupon.fechafin.to_s+"





          www.ahiteveo.com",
                       :at => [80, 700],
                       :height => 100,
                       :width => 100, :size => 9
          pdf.text_box ""+cupon.descuento+"%",
                       :at => [20, 700],
                       :height => 100,
                       :width => 200, :size => 20



        end

        # @cupons.each do |product|
        #imagen = "public"+product.image_url.to_s
        # image = "public/uploads/product/image_url/"+product.id.to_s+"/"+product.id.to_s+".png"
        #hola = "Just <font size='18'>some</font> <b><i>inline</i></b>",  :inline_format => true

        # data += [[product.title, product.descripcion.html_safe, product.price, {:image => imagen, :fit => [100, 200]}, {:image => image, :fit => [100, 200]}]]

        #pdf.image "public/uploads/product/image_url/4/24-08-11-Tesco.png"

        #end

        # pdf.table [["Just <font size='18'>some</font> <b><i>inline</i></b>", "", ""],
        #["<color rgb='FF00FF'>styles</color> being applied here", "", ""]],
        #:cell_style => { :inline_format => true }


        #pdf.table(data, :header => true, :column_widths => [70, 180, 60, 110, 110], :cell_style => {:border_width => 0})
        pdf.move_down 20
        pdf.text "El uso de este sitio web implica la aceptacion de los Terminos y Condiciones y de las Politicas de Privacidad de ahiteveo S.A.
Las fotos son a modo ilustrativo. La venta de cualquiera de los productos publicados esta sujeta a la verificacion de stock. Los precios online para los productos presentados/publicados en www.ahiteveo.com.bo y/o www.ahiteveo.com son validos exclusivamente para la compra via internet en las paginas antes mencionadas.
Copyright  2012 ahiteveo S.A.", :size => 6, :inline_format => true, :align => :center


        pdf.encrypt_document(:owner_password => :random,
                             :permissions => {:print_document => true,
                                              :modify_contents => false,
                                              :copy_contents => false,
                                              :modify_annotations => false})

        send_data pdf.render, type: "application/pdf", disposition: "inline"
      end
    end
  end

  # GET /cupons/1
  # GET /cupons/1.json
  def show
    @cupon = Cupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cupon }
    end
  end

  # GET /cupons/new
  # GET /cupons/new.json
  def new
    @cupon = Cupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cupon }
    end
  end

  # GET /cupons/1/edit
  def edit
    @cupon = Cupon.find(params[:id])
  end

  # POST /cupons
  # POST /cupons.json
  def create
    @cupon = Cupon.new(params[:cupon])

    respond_to do |format|
      if @cupon.save
        format.html { redirect_to @cupon, notice: 'Cupon creado.' }
        format.json { render json: @cupon, status: :created, location: @cupon }
      else
        format.html { render action: "new" }
        format.json { render json: @cupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cupons/1
  # PUT /cupons/1.json
  def update
    @cupon = Cupon.find(params[:id])

    respond_to do |format|
      if @cupon.update_attributes(params[:cupon])
        format.html { redirect_to @cupon, notice: 'Cupon actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupons/1
  # DELETE /cupons/1.json
  def destroy
    @cupon = Cupon.find(params[:id])
    @cupon.destroy

    respond_to do |format|
      format.html { redirect_to cupons_url }
      format.json { head :no_content }
    end
  end
end
