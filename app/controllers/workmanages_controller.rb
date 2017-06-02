class WorkmanagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @workmanages = Workmanage.all
  end

  def new
    @workmanage = Workmanage.new
  end

  def create
    @workmanage = Workmanage.new(workmanages_params)
    if @workmanage.save
      redirect_to workmanages_path, notice: "登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @workmanage = Workmanage.find(params[:id])
  end

  def update
    @workmanage = Workmanage.find(params[:id])
    if @workmanage.update(workmanages_params)
      redirect_to workmanages_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
    def workmanages_params
      params.require(:workmanage).permit(:emp_id, :maneger_id, :start_date, :stop_date)
    end
end
