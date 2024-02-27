class ErrorsController < ApplicationController
  def create
    error = Error.new(error_params)
    if error.save
      render json: error, status: :created
    else
      render json: error.errors, status: :unprocessable_entity
    end
  end

  def index
  end

  private

  def error_params
    params.require(:error).permit(:message, :stack, :domain, :filename, :referrer, :href, :lineno, :colno, :date, :user_id)
  end
end
