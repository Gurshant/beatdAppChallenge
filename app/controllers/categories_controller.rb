class CategoriesController < ApplicationController
  def create
    @category = Category.new params.require(:question).permit(:name)
    if @category.save
      flash[:notice] = "Category created successfully"
    else
      render :new
    end
  end
end
