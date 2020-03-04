class IncomesController < ApplicationController
  def index
    @incomes = Income.order(created_at: :asc)
  end

  def new
    @income = Income.new()
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to @income, notice: "収入科目登録しました"
    else 
      render "new"
    end
  end

  def show
    @income = Income.find(params[:id])
  end

  def edit
    @income = Income.find(params[:id])
  end

  def update
    @income = Income.find(params[:id])
    @income.assign_attributes(income_params)
    if @income.save
      redirect_to @income, notice: "収入科目更新しました"
    else
      render "new"
    end
  end

  def destroy
    @income = Income.find(params[:id])
    @income.destroy
    redirect_to :incomes, notice: "科目を削除しました"
  end

  def income_params
    params.require(:income).permit(:name, :supplement)
  end
end
