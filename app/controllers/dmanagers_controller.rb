class DmanagersController < ApplicationController
  before_action :authenticate_user!
  def index
    @dmanagers = Dmanager.all
  end

  def new
    @dmanager = Dmanager.new
  end

  def create
    @dmanager = Dmanager.new(dmanagers_params)
    if @dmanager.save
      redirect_to dmanagers_path, notice: "登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @dmanager = Dmanager.find(params[:id])
  end

  def update
    @dmanager = Dmanager.find(params[:id])
    if @dmanager.update(dmanagers_params)
      redirect_to dmanagers_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @dmanager = Dmanager.find(params[:id])
    @dmanager.destroy
    redirect_to dmanagers_path, notice: "削除しました！"
  end

  private
    def dmanagers_params
      params.require(:dmanager).permit(:emp_id, :maneger_id, :start_date, :stop_date)
    end
end
