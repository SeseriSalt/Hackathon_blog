class Api::BlogsController < ApplicationController
  def preview
    @p_html = view_context.html(params[:body])
  end
end