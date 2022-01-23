# frozen_string_literal: true

class OperatorsController < ApplicationController
  before_action :set_operator, only: %i[show edit update destroy]

  def index
    @operators = Operator.order(:name)
  end

  def show; end

  private

  def set_operator
    @operator = Operator.find(params[:id])
  end

  def operator_params
    params.require(:operator).permit(:name)
  end
end
