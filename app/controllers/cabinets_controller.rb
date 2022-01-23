# frozen_string_literal: true

class CabinetsController < ApplicationController
  def index
    @cabinets = Cabinet.order(:number)
    @users = User.all
  end

  private

  def set_params
    @cabinet = Cabinet.find(params[:id])
  end

  def cabinet_params
    params.require(:cabinet).permit(:number)
  end
end
