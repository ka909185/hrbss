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
      redirect_to yakushokus_path, notice: "組織情報を登録しました！"
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
      redirect_to yakushokus_path, notice: "組織情報を編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    @yakushokus = Yakushoku.find(params[:id])
    @yakushokus.destroy
    redirect_to yakushokus_path, notice: "組織情報を削除しました！"
  end
  private
    def yakushokus_params
      params.require(:yakushoku).permit(:yakushokuname)
    end
end
