class BasesController < ApplicationController
  before_action :authenticate_user!
  def index
    @bases = Base.search(params[:search])
  end

  def new
    @base = Base.new
  end

  def create
    @base = Base.new(bases_params)
    if @base.save
      redirect_to bases_path, notice: "基本情報を登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @base = Base.find(params[:id])
  end

  def update
    @base = Base.find(params[:id])
    if @base.update(bases_params)
      redirect_to bases_path, notice: "基本情報を編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    @base = Base.find(params[:id])
    @base.destroy
    redirect_to bases_path, notice: "基本情報を削除しました！"
  end
  def show
    @base = Base.find(params[:id])
    @workmanage = Workmanage.find_by(emp_id:@base)
    @comment = @base.comments.build
    @comments = @base.comments
  end
  private
    def bases_params
      params.require(:base).permit(:employeecode, :name, :birthday, :sikaku_id, :koyou_id, :organization_id, :yakushoku_id, :status_id, :sex, :kumiai, :kanichi, :Saikoyo, :ninmei_date)
    end
end
