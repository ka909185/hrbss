class YakushokusController < ApplicationController
  before_action :authenticate_user!
  def index
    @yakushokus = Yakushoku.all
  end
  def new
    @yakushokus = Yakushoku.new
  end

  def create
    @yakushokus = Yakushoku.new(yakushokus_params)
    if @yakushokus.save
      redirect_to yakushokus_path, notice: "登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @yakushokus = Yakushoku.find(params[:id])
  end
  def update
    @yakushokus = Yakushoku.find(params[:id])
    if @yakushokus.update(yakushokus_params)
      redirect_to yakushokus_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    @yakushokus = Yakushoku.find(params[:id])
    @yakushokus.destroy
    redirect_to yakushokus_path, notice: "削除しました！"
  end
  def import
    Yakushoku.import(params[:file])
    redirect_to yakushokus_path, notice: "一括登録しました！"
  end
  private
    def yakushokus_params
      params.require(:yakushoku).permit(:yakushokuname)
    end
end
