class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  # GET /pedidos
  # GET /pedidos.json
  def index
    @pedido = Pedido.new
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
    @pedidos = `python3 lib/assets/python/tasadoronline.py`
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
  end

  # GET /pedidos/1/edit
  def edit
  end

  def validate
    event = Pedido.new(validate_params)
    event.valid?
    event_field = validate_params.keys.first.try(:to_sym)
    validation_response = !event.errors.include?(event_field)
    respond_to do |format|
      format.json { render json: {field_name: event_field, valid: validation_response, message: event.errors[event_field]} }
  end
  
  end
  # POST /pedidos
  # POST /pedidos.json
  def create
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Tasación realizada con éxito.' }
        format.json { render :show, status: :created, location: @pedido }
        
      else
        format.html { render :index }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:nombre, :mail, :telefono, :descripcion, :tipo, :operacion, :region, :comuna, :direccion, :superficie, :dorms, :bano, :estacionamiento, :anio, 
      :norte, :sur, :este, :oeste, :sup_util, :terreno, :privado, :num_piso, :constr, :activo)

    end

    def validate_params
      params.permit(:nombre, :mail, :telefono)
    end
  
    def find_page
      @pedido = Pedido.find_by_slug!(params[:id].split("/").last)
    end
end
