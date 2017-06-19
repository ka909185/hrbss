class KoyousController < ApplicationController
  before_action :authenticate_user!
  def index
    @koyous = Koyou.all
  end
  def new
    @koyous = Koyou.new
  end

  def create
    @koyous = Koyou.new(koyous_params)
    if @koyous.save
      redirect_to koyous_path, notice: "組織情報を登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @koyous = Koyou.find(params[:id])
  end
  def update
    @koyous = Koyou.find(params[:id])
    if @koyous.update(koyous_params)
      redirect_to koyous_path, notice: "組織情報を編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    @koyous = Koyou.find(params[:id])
    @koyous.destroy
    redirect_to koyous_path, notice: "組織情報を削除しました！"
  end
  def import
    Koyou.import(params[:file])
    redirect_to koyous_path, notice: "一括登録しました！"
  end
  private
    def koyous_params
      params.require(:koyou).permit(:koyoukubun)
    end
end
