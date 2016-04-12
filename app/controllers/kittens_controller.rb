class KittensController < ApplicationController
  skip_before_action :ensure_login, only: [:index]

  def index
    @kittens = Kitten.all
  end
end