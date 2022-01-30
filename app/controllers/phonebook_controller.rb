# frozen_string_literal: true

class PhonebookController < ApplicationController
  include ActionView::Rendering
  def index
    @phonebook = User.order(:lname)
  end

  def show
    @user = User.find(params[:id])
  end

  def export_to_excel
    @phone_book = User.all
    respond_to do |format|
      format.html
      format.xlsx do
        response.headers['Content-Disposition'] = 'attachment; filename="official_letters.xlsx"'
      end
    end
  end

  private

  def render_to_body(options)
    _render_to_body_with_renderer(options) || super
  end
end
