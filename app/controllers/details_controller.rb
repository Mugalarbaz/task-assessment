class DetailsController < ApplicationController
  before_action :set_person
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  def index
    @details = @person.details
  end

  def show
  end

  def new
    @detail = @person.details.new
  end

  def edit
  end

  def create
    @detail = @person.details.new(detail_params)

    if @detail.save
      redirect_to person_detail_path(@person, @detail), notice: 'Detail was successfully created.'
    else
      render :new
    end
  end

  def update
    if @detail.update(detail_params)
      redirect_to person_detail_path(@person, @detail), notice: 'Detail was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @detail.destroy
    redirect_to person_details_url(@person), notice: 'Detail was successfully destroyed.'
  end

  private
    def set_person
      @person = Person.find(params[:person_id])
    end

    def set_detail
      @detail = @person.details.find(params[:id])
    end

    def detail_params
      params.require(:detail).permit(:content)
    end
end
