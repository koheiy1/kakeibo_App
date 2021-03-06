class VariablecostsController < ApplicationController
  def index
    @variablecosts = Variablecost.where(user_id: current_user.id).order(created_at: :asc)
  end

  def new
    @variablecost = Variablecost.new()
  end

  def create
    @variablecost = Variablecost.new(variablecost_params)
    if @variablecost.save
      redirect_to @variablecost, notice: "固定費科目登録しました"
    else 
      render "new"
    end
  end

  def show
    @variablecost = Variablecost.find(params[:id])
  end

  def edit
    @variablecost = Variablecost.find(params[:id])
  end

  def update
    @variablecost = Variablecost.find(params[:id])
    @variablecost.assign_attributes(variablecost_params)
    if @variablecost.save
      redirect_to @variablecost, notice: "固定費科目更新しました"
    else
      render "new"
    end
  end

  def destroy
    @variablecost = Variablecost.find(params[:id])
    @variablecost.destroy
    redirect_to :variablecosts, notice: "科目を削除しました"
  end

  def variablecost_params
    params.require(:variablecost).permit(:name, :supplement).merge(user_id: current_user.id)
  end
end
