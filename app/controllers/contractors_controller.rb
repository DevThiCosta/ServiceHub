class ContractorsController < ApplicationController
  def index
    @contractors = Contractor.all
  end

  def show
    @contractor = Contractor.find(params[:id])
  end

  def new
    @contractor = Contractor.new
  end

  def create
    @contractor = Contractor.new(contractor_params)
    if @contractor.save
      redirect_to contractor_path(@contractor)
    else
      render :new
    end
  end

  def edit
    @contractor = Contractor.find(params[:id])
  end

  def update
    @contractor = Contractor.find(params[:id])
    if @contractor.update(contractor_params)
      redirect_to contractor_path(@contractor)
    else
      render :edit
    end
  end

  def destroy
    @contractor = Contractor.find(params[:id])
    @contractor.destroy
    redirect_to contractors_path
  end

  private

  def contractor_params
    params.require(:contractor).permit(:name, :email, :phone)
  end
end
