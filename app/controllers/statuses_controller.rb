class StatusesController < ApplicationController
  before_action :authenticate_user!
  def index
    @statuses = Status.all
  end
  def new
    @statuses = Status.new
  end

  def create
    @statuses = Status.new(statuses_params)
    if @statuses.save
      redirect_to statuses_path, notice: "組織情報を登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @statuses = Status.find(params[:id])
  end
  def update
    @statuses = Status.find(params[:id])
    if @statuses.update(statuses_params)
      redirect_to statuses_path, notice: "組織情報を編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    @statuses = Status.find(params[:id])
    @statuses.destroy
    redirect_to statuses_path, notice: "組織情報を削除しました！"
  end
  def import
    Status.import(params[:file])
    redirect_to statuses_path, notice: "一括登録しました！"
  end
  private
    def statuses_params
      params.require(:status).permit(:zaishoku)
    end
end
