class RatesController < ApplicationController
    before_action :rate_find_params, only: [:show, :edit, :update]
  def index
    @rates = Rate.all
  end

  def new
    @rate = Rate.new
  end

  def show
  end

  def create
    @rate = Rate.new(rate_params)
   if @rate.save
      redirect_to @rate
   else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @rate.update(rate_params)
       @rate.save
       redirect_to @rate
    else
      render 'edit'
    end
  end

  def destroy
    rate_find_params
    @rate.destroy
    redirect_to root_path
  end

  private

   def rate_params
      params.require(:rate).permit(:item, :dollar)
   end

   def rate_find_params
      @rate = Rate.find(params[:id])
   end
end
