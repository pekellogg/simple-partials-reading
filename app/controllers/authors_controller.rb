class AuthorsController < ApplicationController
  # "authors"
  #   t.string   "name"
  #   t.string   "hometown"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false

  # routes
  # resources :authors, only: :show
  
  def show
    @author = Author.find(params[:id])
  end
end
