class OrganizationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @orgs = Organization.all
  end
  def new
    @org = Organization.new
  end

  def create
    @org = Organization.new(organizations_params)
    if @org.save
      redirect_to organizations_path, notice: "組織情報を登録しました！"
    else
      render 'new'
    end
  end

  def edit
    @org = Organization.find(params[:id])
  end
  def update
    @org = Organization.find(params[:id])
    if @org.update(organizations_params)
      redirect_to organizations_path, notice: "組織情報を編集しました！"
    else
      render 'edit'
    end
  end
  def destroy
    @org = Organization.find(params[:id])
    @org.destroy
    redirect_to organizations_path, notice: "組織情報を削除しました！"
  end
  private
    def organizations_params
      params.require(:organization).permit(:orgcode, :orgname)
    end
  end
