class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  # GET /line_items
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to store_url }
        format.js { @current_item = @line_item }
        format.json { render action: 'show',
                             status: :created, location: @line_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_item.errors,
                             status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_items/1
  def update
    if @line_item.update(line_item_params)
      redirect_to @line_item
    else
      render :edit
    end
  end

  # DELETE /line_items/1
  def destroy
    @line_item.destroy
    redirect_to store_path
  end

  def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to store_path
  end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
    if @line_item.quantity > 1
      @line_item.quantity -= 1
    else
      @line_item.quantity = 0
      @line_item.destroy
    end
    @line_item.save
    redirect_to store_path
  end


  private

  # Используйте обратные вызовы, чтобы поделиться общими настройками или ограничениями между действиями..
  def set_line_item
    @line_item = LineItem.find(params[:id])
  end

  # Разрешить только доверенный параметр "белый список".
  def line_item_params
    params.require(:line_item).permit(:product_id, :cart_id, :quantity)
  end
end
