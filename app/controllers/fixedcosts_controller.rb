class FixedcostsController < ApplicationController
  def index
    @fixedcosts = Fixedcost.where(user_id: current_user.id).order(created_at: :asc)
  end

  def new
    @fixedcost = Fixedcost.new()
  end

  def create
    @fixedcost = Fixedcost.new(fixedcost_params)
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費科目登録しました"
    else 
      render "new"
    end
  end

  def show
    @fixedcost = Fixedcost.find(params[:id])
  end

  def edit
    @fixedcost = Fixedcost.find(params[:id])
  end

  def update
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.assign_attributes(fixedcost_params)
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費科目更新しました"
    else
      render "new"
    end
  end

  def destroy
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.destroy
    redirect_to :fixedcosts, notice: "科目を削除しました"
  end

  def fixedcost_params
    params.require(:fixedcost).permit(:name, :supplement).merge(user_id: current_user.id)
  end
end
