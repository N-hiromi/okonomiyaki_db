class AccountsController < ApplicationController
  def show
    @products= current_user.products
  end
  
  def edit
  end
end
