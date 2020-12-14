class FoodsController < ApplicationController

  def index
   @foods = SearchFacade.food('sweet potato')
  end
end
