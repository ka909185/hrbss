class SikakusController < ApplicationController
  before_action :authenticate_user!
  def index
    @sikakus = Sikaku.all
  end
  def new
    @sikakus = Sikaku.new
  end

  def create
    @sikakus = Sikaku.new(sikakus_params)
    if @sikakus.save
      redirect_to sikakus_path, notice: "組織情報を登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @sikakus = Sikaku.find(params[:id])
  end
  def update
    @sikakus = Sikaku.find(params[:id])
    if @sikakus.update(sikakus_params)
      redirect_to sikakus_path, notice: "組織情報を編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    @sikakus = Sikaku.find(params[:id])
    @sikakus.destroy
    redirect_to sikakus_path, notice: "組織情報を削除しました！"
  end
  private
    def sikakus_params
      params.require(:sikaku).permit(:shikakuname)
    end
end
