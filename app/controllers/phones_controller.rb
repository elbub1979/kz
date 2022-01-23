# frozen_string_literal: true

class PhonesController < ApplicationController
  before_action :set_phone, only: %i[show edit update destroy]
  def index
    @phones = Phone.order(:number)
  end

  def show; end

  def create; end

  private

  def set_phone
    @phone = Phone.find(params[:id])
  end

  def phone_params
    params.require(:phone).permit(:number, :phone_type)
  end
end
