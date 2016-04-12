class KittensController < ApplicationController
  skip_before_action :ensure_login, only: [:index]

  def index
    @kittens = Kitten.order(:name)
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

end