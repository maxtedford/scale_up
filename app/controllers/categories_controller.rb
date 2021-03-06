class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @loan_requests = @category.loan_requests.paginate(:page => params[:page], :per_page => 12)
    @categories = Category.all_cats
  end
end
