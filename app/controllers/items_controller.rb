class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new]

  def index
    @items = policy_scope(Item)
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    authorize @item
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @item.user == current_user.admin?
      @item.update(item_params)
      redirect_to item_path(@item)
    end
  end

  def destroy
    if @item.user == current_user.admin?
      @item.destroy
      redirect_to items_path
    end
  end

  private

  def find_item
    @item = Item.find(params[:id])
    authorize @item
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :photo, :category)
  end
end
